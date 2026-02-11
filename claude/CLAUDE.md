# CLAUDE

## Communication with CLAUDE

- 我可以用任何語言跟 Claude 溝通，但是Claude 只能用繁體中文回答我，而且詞彙要用台灣詞彙為主。

## MCP 使用



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
    - The commit message should be in English
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
