# AICompanyManager actual UI direct source repair unlimited scope

## Dashboard
Remove:
- 操作入口 card
- Phase AN explanation text

Keep:
- AI企業選択
- 会社概要
- 全体状況
- 部門一覧
- 組織一覧

## AI企業設定
Add:
- President robot selection from Business-side robot pool/catalog
- Company business policy instruction to President

Remove:
- 新規追加 card from AI企業設定

## Organization screens
Change robot placement to Business-side robot pool/catalog selection.

## Allocation model
- AICompanyManager is system-use.
- Allocation is unlimited.
- No contracted quantity is consumed.
- No available quantity check is performed.
- Placement records are still represented in local UI state by role / organization / placement unit.

## Boundary
Persistent DB integration is not executed.
