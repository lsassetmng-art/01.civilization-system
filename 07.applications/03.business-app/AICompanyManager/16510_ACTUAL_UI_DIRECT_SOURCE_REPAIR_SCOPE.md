# AICompanyManager actual UI direct source repair scope

## Direct source changes

### Dashboard
Remove:
- 操作入口 card
- Phase AN header/subtitle display

Keep:
- AI企業選択
- 会社概要
- 全体状況
- 部門一覧
- 組織一覧

### AI企業設定
Add:
- President robot selection from Business registered robot list
- Company business policy instruction to President

Remove:
- 新規追加 card

### Organization screens
Change robot placement to Business registered robot selection.
Use existing robot_ids on organization records.

## Business registered robot source
Use existing `data.aiworkers` as local Business registered robot reference.
Seed missing local catalog entries only for UI actual-use fallback.

## Boundary
Persistent DB integration is not executed.
