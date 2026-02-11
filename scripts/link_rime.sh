#! /bin/bash
source ./utils.sh

SOURCE=$HOME'/Github/dotfiles'

set -euo pipefail

RIME_DIR="${HOME}/Library/Rime"

BOPOMOFO="$SOURCE/rime/my-rime-bopomofo"
TERRA_PINYIN="$SOURCE/rime/my-rime-terra-pinyin"
CUSTOM_SETTING="$SOURCE/rime/custom-setting"

mkdir -p "${RIME_DIR}"


MANIFEST="${RIME_DIR}/.managed-symlinks.txt"
TMP_MANIFEST="$(mktemp)"
TMP_FILES="$(mktemp)"
TMP_BASENAMES="$(mktemp)"

cleanup() {
  rm -f "${TMP_MANIFEST}" "${TMP_FILES}" "${TMP_BASENAMES}"
}
trap cleanup EXIT

collect_files() {
  local src="$1"
  # 視你的 repo 結構調 maxdepth
  find "$src" -maxdepth 2 -type f \( -name "*.yaml" -o -name "*.yml" \) -print
}

# 1) 收集所有候選檔案路徑（兩個來源）
collect_files "$BOPOMOFO" >> "$TMP_FILES"
collect_files "$TERRA_PINYIN" >> "$TMP_FILES"
collect_files "$CUSTOM_SETTING" >> "$TMP_FILES"

# 2) 檢查 basename 衝突（攤平必須做這步，否則會 silent override）
#    產生 basenames 清單 -> 找重複
awk -F/ '{print $NF}' "$TMP_FILES" | sort > "$TMP_BASENAMES"
DUPES="$(uniq -d "$TMP_BASENAMES" || true)"

if [[ -n "${DUPES}" ]]; then
  echo "ERROR: filename conflicts detected (same basename in multiple sources):"
  echo "${DUPES}"
  echo ""
  echo "Conflict detail:"
  while IFS= read -r name; do
    [[ -z "$name" ]] && continue
    echo "== $name =="
    grep -F "/$name" "$TMP_FILES" || true
  done <<< "$DUPES"
  exit 2
fi

# 3) 建立/更新 symlink（同名衝突已排除）
while IFS= read -r f; do
  [[ -z "$f" ]] && continue
  base="$(basename "$f")"
  target="${RIME_DIR}/${base}"

  # -s: symlink, -f: overwrite, -n: treat existing symlink as file
  link_file "$f" "$target"
  echo "$target" >> "$TMP_MANIFEST"
done < "$TMP_FILES"

# 4) 清理舊的 managed symlinks（只刪 symlink，避免誤刪實體檔）
if [[ -f "$MANIFEST" ]]; then
  while IFS= read -r old; do
    [[ -z "$old" ]] && continue
    if ! grep -Fxq "$old" "$TMP_MANIFEST"; then
      if [[ -L "$old" ]]; then
        rm -f "$old"
      fi
    fi
  done < "$MANIFEST"
fi

sort -u "$TMP_MANIFEST" > "$MANIFEST"

echo "OK: symlinks updated in ${RIME_DIR}"
echo "Managed list: ${MANIFEST}"
