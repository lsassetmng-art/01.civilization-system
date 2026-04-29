# AICompanyManager Company Save Click Capture Fix Scope

## In scope
- Rewrite company browser save client.
- Capture clicks for button/input/a/role=button.
- Detect label variants:
  - 会社を追加
  - 会社追加
  - 追加 near company area
  - 会社を変更
  - 会社変更
  - 変更 near company area
- Stronger company name / business domain field detection.
- Restart UI and company write API.

## Out of scope
- Real DB save during this script.
- Robot placement save.
- Company common rules save.
- RLS change.
- DELETE.
