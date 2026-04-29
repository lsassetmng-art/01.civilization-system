# AICompanyManager Company Save Route First Scope

## In scope
- Create local company write API on port 8796.
- Detect BusinessOS DB company table dynamically.
- Support company add/change payload.
- Bind only company buttons:
  - 会社を追加
  - 会社を変更
- Remove generic DB本保存 and unstable role-button save binding.

## Out of scope
- Real DB save during this script.
- Robot placement persistent save from UI.
- RLS changes.
- DELETE.
- Company common rule file save.
- President business policy save.
- Department task ledger save.
