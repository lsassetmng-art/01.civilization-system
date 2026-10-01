# AICompanyManager robot reference actual UI wire recovery scope

## In scope
- Build robot reference cache from read-only DB log.
- Wire actual UI reference cards into existing helper functions.
- Preserve existing accepted UI behavior:
  - President: AI企業設定
  - Manager: 部門詳細
  - Leader: 課詳細
  - Worker: 課詳細 multiple placement/edit
  - Display: 社内通称@役割
  - Allocation: unlimited system-use

## Out of scope
- DB write.
- RLS change.
- API write.
- Persistent assignment write.
- Quantity consumption.
- Organization/internal identifier rename.
