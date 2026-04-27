# AICompanyManager UI terminology section repair scope

## User-facing terminology
Replace visible UI wording:
- 組織 -> 課
- 組織一覧 -> 課一覧
- 組織詳細 -> 課詳細
- 組織追加 -> 課追加
- 組織変更 -> 課変更
- 組織選択 -> 課選択
- 組織名 -> 課名
- 現在の組織 -> 現在の課
- 所属組織 -> 所属課
- 組織内役割 -> 課内役割
- 組織カード -> 課カード

## Internal compatibility
Do not rename:
- organization_id
- organization_name
- organizationOptions
- renderOrganization*
- business.aicm_organization
- API payload field names

## Boundary
This is UI wording only.
