#! /bin/bash
source ./utils.sh

SOURCE=$HOME'/Github/dotfiles'

print 'Deploy ltex LSP'

LTEX_VERSION='16.0.0'
LTEX_DIR_NAME="ltex-ls-$LTEX_VERSION"
LTEX_TAR="$LTEX_DIR_NAME.tar.gz"
# 定義目標路徑變數，減少重複拼湊造成的錯誤風險
TARGET_BASE="$SOURCE/lsp/ltex-ls"
TARGET_EXTRACTED="$TARGET_BASE/$LTEX_DIR_NAME"

# 確保目標父目錄存在，避免後續操作失敗
mkdir -p "$TARGET_BASE"

print 'Download ltex-ls, version: '$LTEX_VERSION
wget 'https://github.com/valentjn/ltex-ls/releases/download/'$LTEX_VERSION'/'$LTEX_BIN'.tar.gz'

tar xvzf $LTEX_BIN'.tar.gz'
mv $LTEX_BIN $SOURCE'/lsp/ltex-ls/'$LTEX_BIN
rm -f $LTEX_BIN'.tar.gz'

if [ -d "$TARGET_EXTRACTED" ]; then
    print "版本 $LTEX_VERSION 已經存在於 $TARGET_EXTRACTED，跳過下載與解壓縮。"
else
    print "未發現版本 $LTEX_VERSION，開始下載..."

    wget "https://github.com/valentjn/ltex-ls/releases/download/$LTEX_VERSION/$LTEX_TAR" -O "/tmp/$LTEX_TAR"

    tar xvzf "/tmp/$LTEX_TAR" -C "$TARGET_BASE"

    rm "/tmp/$LTEX_TAR"
fi

print 'Link ltex-ls dir'
link_dir $SOURCE'/lsp/ltex-ls' $HOME'/.ltex-ls'
