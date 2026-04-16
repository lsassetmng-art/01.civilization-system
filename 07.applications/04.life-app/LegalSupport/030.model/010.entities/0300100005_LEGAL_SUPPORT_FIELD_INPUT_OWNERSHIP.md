# ============================================================
# LEGAL SUPPORT FIELD INPUT OWNERSHIP
# ============================================================

status: draft-formal
system: LegalSupport
layer: model
subdomain: entities
schema: life

ownership_rules:
  user_input_dominant:
    - title
    - category
    - summary
    - fact_text
    - assumption_text
    - source_note
    - display_name
    - relation_to_case
    - document_name
    - question_text
    - consultation summary
    - action title
    - deadline_date
    - amount
    - included_sections

  system_managed_dominant:
    - all primary keys
    - owner_user_id
    - primary_app_route
    - sort_order
    - created_at
    - updated_at
    - exported_at
    - exported_by

mixed_control:
    - status
    - priority
    - visibility_scope
    - family_share_enabled
    - possession_status
    - submission_status
    - question_status
    - action_status
    - notification_enabled

notes:
  - user_input_dominant は UI から明示編集される
  - system_managed_dominant はバックエンドまたは制御ロジックが保持する
  - mixed_control は UI と system の双方影響を受ける
