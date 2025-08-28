# CLAUDE

## Communication with CLAUDE

- 我可以用任何語言跟 Claude 溝通，但是Claude 只能用繁體中文回答我，而且詞彙要用台灣詞彙為主。

## MCP 使用

### Memory MCP

所有專案都要自動透過 memory mcp 紀錄討論過的內容。
每個紀錄的key 都要以 "[${PROJECT_NAME}]" 作為prefix，並以"-${CURRENT_TIME}" 為 postfix。

使用步驟如下：

1. Claude 啟動時先根據 ${PROJECT_NAME} 讀取 memory mcp 中，關於這個專案的討論內容。
2. 按照時間排序，將過去討論過的內容整理為context，並依據這些內容繼續討論、回答。
3. Claude 在每次回答之後，整理該次回答的重點。
4. 使用指令： `date -U` 取得 UTC Format 的系統時間。
4. 將整理完的重點寫入 Memory mcp 中，key 的格式為 "[${PROJECT_NAME}][${SUBJECT_NAME}]${SUMMARY_TITLE}-${CURRENT_TIME}"
  - ${PROJECT_NAME}: claude 正在運行中的根目錄名稱。例如： "ezKanban" 是claude 正在執行中的專案目錄。
  - ${SUBJECT_NAME}: claude 正在討論中的主題。例如："CreateCardUseCase 實作" 是 claude 在 ezkanban 中要執行的一群任務的共同主題。
  - ${SUMMARY_TITLE}: claude 在這次回答中做的事情。例如，在"CreateCardUseCase 實作" 這個 subject 底下可能有 "實作 use case teset 測試"、"實作 use case 以通過測試"、"Refactor 以完成的程式"等工作。
  - ${CURRENT_TIME}: 使用前一步驟中，透過 `date -U` 取得的時間。

不寫入 memory mcp 的情況：
- 當我的指令中有包含 `$no_memory` 的文字，這單一指令不要寫入 memory mcp
- 如果僅僅只是描述 memory mcp 中的討論內容，而沒有新增的討論內容，不需要寫入 memory mcp


## 開發原則

### Test Driven Development (TDD)

claude寫程式的過程必須遵循 TDD的步驟：
1. 為新的功能撰寫一個測試。
2. 執行測試讓測試 fail，確認錯誤訊息內容，以確保測試的內容是正確的。若不正確，持續修改測試或城市，讓錯誤訊息正確：
    - 錯誤訊息應該錯在該測試期望新功能未實作前會 Fail 的 assertion。
    - 若有 compile error，新增最少 compile 必要的程式碼，使 compile 通過。
    - 若failure的位置不在期望的assertion，修改測試。
3. 修改source 程式碼讓程式通過
4. Refactor code。

## Git Rules

### Commit

When I tell you to commit:

1. Granularity:
    - Create multiple commits if necessary.
    - Each commit should include only the minimal, self-contained change required.
2. Category Prefixes:
    - All commit messages should include prefix with following rules, unless the project has its own rules defined in local setting:
        - "[Feature Addition]": When a modification adds a feature or functionality to the project
        - "[Bug Fixing]": When a modification fixes a bug of the project.
        - "[Optimization]": When a modification does not alter the functional behavior of the system, but improves operational efficiency, maintainability, or development productivity.
        - "[Refactoring]": When a modification does not alter its observable behavior, but modifies the internal structure of code and improves readability, maintainability, or extensibility.
        - "[Documentation]": When a modification adds or modifies the documentation of the project.
        - "[Deployment]": When a project changes its project version.
    - Each commit message must begin with one of the predefined six prefixes.
    - If a commit clearly spans multiple categories, combine the prefixes with an ampersand (&).
    - Example: [Feature Addition & Documentation] for a commit that both adds a new feature and updates its documentation.
3. Consistency:
    - Do not mix unrelated changes in a single commit.
    - Always ensure that the commit message reflects the exact scope of the modification.
4. Author:
    - 只使用以下指令取得的 user name 以及 email 作為 author:
        ```bash
        $ git config --get user.name
        $ git config --get user.email
        ```
    - 不可以將 Claude AI 作為 coauthor 寫進任何 commit 中的資訊！不要出現以下訊息：
        ```
        🤖 Generated with [Claude Code](https://claude.ai/code)

        Co-Authored-By: Claude <noreply@anthropic.com>
        ```
