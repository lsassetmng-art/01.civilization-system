# ============================================================
# AICompanyManager Company Operation Screen Canon
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase AA
status: company-operation-screen-canon-created

## 1. Canon

Company add, company edit, and company delete belong to a separate screen named:

- 会社操作

The company dashboard provides the navigation route to this screen.

## 2. Company Operation Screen Responsibilities

The company operation screen owns:
- company add
- company edit
- company delete
- company-level rule attachment metadata

## 3. Company Rule Files

Each company can have company-level rule files.

Examples:
- 社内規則
- 会社ルール
- 運用ルール
- 納品ルール
- セキュリティルール
- 禁止事項
- 品質基準

Current mock stores:
- file name
- file size
- file type
- last modified

Current mock does not upload or persist real files to a server.

## 4. Dashboard Boundary

The company dashboard should not contain inline company add/edit/delete forms.

It should contain navigation buttons:
- 会社操作へ
- 組織操作へ
