# ============================================================
# END OF LIFE PLANNER LIFECYCLE AND SENSITIVITY MODEL
# ============================================================

status: canonical-draft
phase: L1-spec-placement

record_status:
  - active
  - archived
  - deleted_logical

visibility_status:
  - private
  - shared_partial
  - shared_full

sensitivity_class:
  S1_low:
    - checklist_item
  S2_medium:
    - emergency_contact
    - family_profile
    - contract_registry
    - document_registry
  S3_high:
    - medical_preference
    - care_preference
    - funeral_preference
    - digital_asset_note
    - family_message

fixed_rules:
  - S3_high は共有・出力前の確認を強化する
  - 意思系レコードは履歴保持前提
  - 物理削除より論理削除を優先する
