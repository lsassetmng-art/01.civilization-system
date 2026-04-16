# ============================================================
# END OF LIFE PLANNER DOMAIN MODEL
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: EndOfLifePlanner
schema: life
layer: 030.model
subfolder: 010.core
owner: Boss
prepared_by: Zero

entities:
  - end_of_life_case
  - preference_note
  - medical_care_note
  - care_support_note
  - asset_note
  - document_location_note
  - contact_record
  - consultation_record
  - attached_document
  - family_share_record

model_rules:
  - 案件が中心で、希望事項・医療/介護・資産/書類・連絡先がぶら下がる
  - 連絡先は案件横断で参照できる
  - 家族共有は正本移譲ではなく共有ビューとして扱う

schema_policy:
  primary_schema: life
  rules:
    - EndOfLifePlanner の業務データは life スキーマに保持する
    - 終活整理データを他スキーマの正本として扱わない
    - 外部連携があっても正本境界は life を維持する
