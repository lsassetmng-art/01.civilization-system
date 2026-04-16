# ============================================================
# END OF LIFE PLANNER CANONICAL DRAFT
# ============================================================

status: canonical-draft
phase: L1-spec-placement

core_entities:
  - owner_profile
  - emergency_contact
  - family_profile
  - medical_preference
  - care_preference
  - funeral_preference
  - contract_registry
  - digital_asset_note
  - document_registry
  - family_message
  - handoff_document
  - sharing_permission
  - checklist_item
  - access_audit_log

fixed_boundaries:
  - non-medical
  - non-care-decision
  - non-legal-advice
  - non-tax-certification
  - password_plaintext_prohibited
  - owner_explicit_share_only
  - masking_required_for_sensitive_export

integration_targets:
  - InheritanceSupport
  - LegalSupport
  - MoneyPlanner
  - LifePlanner

implementation_readiness:
  - screen_inventory fixed
  - screen_transition fixed
  - role_permission_matrix fixed
  - data_entities exact fixed
  - request_response exact payload fixed
  - disclaimer_and_safety fixed

next_expected_work:
  - DB logical schema draft
  - common component official review handoff
  - implementation preparation handoff
