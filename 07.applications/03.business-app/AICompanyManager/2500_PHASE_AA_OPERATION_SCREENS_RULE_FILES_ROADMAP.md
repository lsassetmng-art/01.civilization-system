# ============================================================
# AICompanyManager Phase AA Operation Screens Rule Files Roadmap
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase AA
status: operation-screens-rule-files-started
owner: Boss
prepared_by: Zero

## 1. Current Position

Phase Z completed:
- company delete inside company dashboard
- organization tree delete
- organization unit delete
- local mock delete guard

Phase AA reflects:
- company add/edit/delete should be a separate company operation screen
- organization add/edit/delete should be a separate organization operation screen
- navigation to both operation screens should start from company dashboard
- company-level internal rules should support file attachments
- organization-level rules should support file attachments

## 2. Review Inputs

修正:
- 会社の追加、変更、削除は別画面「会社操作」
- 動線は会社ダッシュボードから
- 組織の追加、変更、削除は別画面「組織操作」
- 動線は会社ダッシュボードから
- 社内規則やルールを会社ごとにファイル添付したい
- これは会社操作画面で行う
- 組織ごとのルール添付ファイルは組織操作画面で行う

## 3. Phase AA Scope

- add dashboard navigation to company operation screen
- add dashboard navigation to organization operation screen
- hide inline add/edit operation panels from dashboard
- add company operation screen:
  - company add
  - company edit
  - company delete
  - company rule file attachment metadata
- add organization operation screen:
  - organization tree add/edit/delete
  - organization unit add/edit/delete
  - organization tree rule file attachment metadata
  - organization unit rule file attachment metadata
- keep real file upload/storage out of scope
- store file metadata only in local mock state

## 4. Out of Scope

- DB write
- RLS apply
- live AIWorkerOS call
- server-side file upload
- real attachment storage
- production delete audit
- git push
