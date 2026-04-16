# ============================================================
# NAMECARD PUBLICATION PREFLIGHT MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines pre-publication diagnostics before ERP-wide publication request.

preflight_checks:
- required_contact_fields_present
- company_context_present
- publication_policy_present
- ERP_use_setting_present
- protected_field_block_check
- internal_note_mixture_check
- summary_generation_ready
- approval_required_check

outputs:
- preflight_passed
- blocking_validation_codes
- warning_items
- publication_preview_payload

