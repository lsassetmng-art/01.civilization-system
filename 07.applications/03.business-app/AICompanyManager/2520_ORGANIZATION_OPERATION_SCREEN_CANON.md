# ============================================================
# AICompanyManager Organization Operation Screen Canon
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase AA
status: organization-operation-screen-canon-created

## 1. Canon

Organization add, organization edit, and organization delete belong to a separate screen named:

- 組織操作

The company dashboard provides the navigation route to this screen.

## 2. Organization Operation Screen Responsibilities

The organization operation screen owns:
- organization tree add
- organization tree edit
- organization tree delete
- organization unit add
- organization unit edit
- organization unit delete
- organization-level rule attachment metadata

## 3. Organization Rule Files

Organization rule files may be attached at:
- organization tree level
- organization unit level

Examples:
- 組織ルール
- 部門ルール
- 作業ルール
- レビュー基準
- 成果物基準
- 禁止事項
- 引き継ぎ基準

Current mock stores only file metadata.

## 4. Robot Display Rule

Organization units continue to display:

- robot_name@ai_role
