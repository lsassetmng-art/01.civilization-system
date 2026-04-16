# ============================================================
# LEGAL SUPPORT VALIDATION RULE MATRIX
# ============================================================

status: draft-formal
system: LegalSupport
layer: policy
subdomain: boundaries
schema: life

validation_rules:

  legal_case:
    required:
      - title
      - category
      - priority
      - visibility_scope
      - family_share_enabled
    checks:
      - title must not be empty
      - category must be allowed enum
      - priority must be allowed enum
      - visibility_scope must be allowed enum

  fact_timeline:
    required:
      - legal_case_id
      - event_date_precision
      - event_type
      - fact_text
      - verification_status
    checks:
      - fact_text must not be empty
      - event_date may be null only when precision != exact_date
      - assumption_text is optional
      - assumption_text must not replace fact_text
      - verification_status must be allowed enum

  stakeholder:
    required:
      - legal_case_id
      - stakeholder_type
      - display_name
      - share_visibility
    checks:
      - display_name must not be empty
      - share_visibility must be allowed enum

  document_item:
    required:
      - legal_case_id
      - document_category
      - document_name
      - possession_status
      - submission_status
      - important_flag
      - shared_flag
    checks:
      - document_name must not be empty
      - shared_flag=true requires case family_share_enabled=true or future professional mode

  question_list:
    required:
      - legal_case_id
      - question_text
      - question_status
      - priority
    checks:
      - question_text must not be empty
      - answered_at cannot exist when question_status=open unless overridden by future admin rule

  consultation_note:
    required:
      - legal_case_id
      - consultation_type
      - consultation_date
      - summary
    checks:
      - summary must not be empty

  action_item:
    required:
      - legal_case_id
      - title
      - action_status
      - assignee_type
    checks:
      - title must not be empty

  deadline_item:
    required:
      - legal_case_id
      - deadline_type
      - deadline_date
      - urgency_level
      - notification_enabled
    checks:
      - deadline_date must exist
      - urgency_level must be allowed enum

  expense_record:
    required:
      - legal_case_id
      - expense_type
      - amount
      - currency_code
    checks:
      - amount must be >= 0
      - currency_code must be allowed enum

  export_bundle:
    required:
      - legal_case_id
      - export_type
      - included_sections
      - target_scope
    checks:
      - at least one included_sections item must be true
      - target_scope must be allowed enum
      - professional_future is future-only

cross_entity_rules:
  - child entity legal_case_id must reference existing life.legal_case
  - archived legal_case cannot accept new child records unless reopen flow is defined later
  - family_visible stakeholder cannot be exported when case visibility_scope=private
  - hidden document items must not appear in export preview
