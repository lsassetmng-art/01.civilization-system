# ============================================================
# INHERITANCE SUPPORT DOMAIN MODEL
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: InheritanceSupport
layer: 030.model
subfolder: 010.core
owner: Boss
prepared_by: Zero

entities:
  - inheritance_case
  - heir_candidate
  - family_member
  - asset_note
  - liability_note
  - will_note
  - gift_record
  - deadline_record
  - consultation_record
  - attached_document
  - family_share_record

model_rules:
  - 案件が中心で、関係者・資産・負債・書類・相談メモがぶら下がる
  - 家族は案件横断で参照できる
  - 家族共有は正本移譲ではなく共有ビューとして扱う
