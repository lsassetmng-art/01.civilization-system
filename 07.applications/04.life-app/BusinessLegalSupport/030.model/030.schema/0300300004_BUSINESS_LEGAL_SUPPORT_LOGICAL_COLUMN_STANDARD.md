# ============================================================
# BUSINESS LEGAL SUPPORT LOGICAL COLUMN STANDARD
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 030.schema
owner: Boss
prepared_by: Zero

column_standard:
  primary_id:
    - uuid
  owner_user_id:
    - uuid
  status:
    - varchar or enum-like constrained text
  priority:
    - varchar or enum-like constrained text
  title:
    - varchar(200) class logical size
  summary:
    - text
  memo:
    - text
  amount:
    - numeric class logical type
  currency_code:
    - varchar(3)
  due_at:
    - timestamptz class logical type
  date_only_fields:
    - date class logical type
  created_at:
    - timestamptz
  updated_at:
    - timestamptz
  deleted_at:
    - timestamptz nullable

timestamp_rule:
  - created_at は作成時必須
  - updated_at は更新時必須
  - deleted_at は論理削除時のみ使用

text_rule:
  - 長文は text
  - ラベル系は短い constrained text
  - 法的結論文の格納は対象外

ownership_rule:
  - すべて owner_user_id または issue_id 経由で owner に帰属する
