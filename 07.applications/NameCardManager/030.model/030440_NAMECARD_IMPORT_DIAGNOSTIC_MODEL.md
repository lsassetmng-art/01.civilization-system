# ============================================================
# NAMECARD IMPORT DIAGNOSTIC MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines diagnostics before migration import execution.

diagnostic_checks:
- missing_required_field
- invalid_email_format
- invalid_phone_format
- duplicate_candidate
- normalized_company_candidate
- suspicious_internal_note_candidate
- unsupported_column_present
- image_reference_missing
- front_back_pair_incomplete

outputs:
- blocking_issues
- warning_issues
- review_candidates

