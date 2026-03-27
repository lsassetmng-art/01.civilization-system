# ============================================================
# COMPANY BUILDER DB MODEL
# ============================================================

status: canonical
layer: model
scope: company-builder
component: company-builder-db-model

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official database model
for Company Builder persistence.

The model must support:
- company draft creation
- staged editing
- template application
- bundle-based persistence
- validation runs
- approval-if-needed
- establishment tracking
- audit traceability


# ============================================================
# 2. CORE TABLE SET
# ============================================================

Official core tables:

- company_draft
- company_draft_bundle
- company_validation_run
- company_validation_result
- company_approval_record
- company_establish_record
- company_template_application_log
- company_builder_audit_log


# ============================================================
# 3. TABLE: company_draft
# ============================================================

Purpose:
Stores parent draft metadata.

Recommended columns:
- company_draft_id
- draft_code
- draft_status
- builder_stage
- company_template_code
- company_type
- created_by
- created_at
- updated_at
- current_validation_state
- current_approval_state
- current_establish_state
- is_deleted
- deleted_at


# ============================================================
# 4. TABLE: company_draft_bundle
# ============================================================

Purpose:
Stores bundle payloads for company drafts.

Recommended columns:
- company_draft_bundle_id
- company_draft_id
- bundle_type
- source_mode
- version_no
- is_current
- bundle_payload
- payload_hash
- updated_by
- updated_at

bundle_type examples:
- company_core_bundle
- nation_binding_bundle
- product_scope_bundle
- site_plan_bundle
- property_tenant_bundle
- symbolic_profile_bundle
- public_profile_bundle
- management_baseline_bundle
- asset_operation_bundle
- evaluation_seed_bundle
- listing_readiness_bundle


# ============================================================
# 5. TABLE: company_validation_run
# ============================================================

Purpose:
Stores validation execution header.

Recommended columns:
- company_validation_run_id
- company_draft_id
- validation_state
- builder_stage
- blocking_error_count
- warning_count
- info_count
- executed_by
- executed_at
- notes


# ============================================================
# 6. TABLE: company_validation_result
# ============================================================

Purpose:
Stores per-code validation results.

Recommended columns:
- company_validation_result_id
- company_validation_run_id
- company_draft_id
- code
- severity
- category
- builder_stage
- target_path
- title
- message
- recommended_fix
- is_blocking
- created_at


# ============================================================
# 7. TABLE: company_approval_record
# ============================================================

Purpose:
Stores approval-if-needed history.

Recommended columns:
- company_approval_record_id
- company_draft_id
- approval_state
- requested_at
- reviewed_at
- reviewed_by
- reviewer_notes
- approval_conditions
- source_validation_run_id
- created_at


# ============================================================
# 8. TABLE: company_establish_record
# ============================================================

Purpose:
Stores establishment processing history.

Recommended columns:
- company_establish_record_id
- company_draft_id
- establish_state
- requested_at
- established_at
- blocked_at
- processed_by
- establish_notes
- source_approval_record_id
- created_at


# ============================================================
# 9. TABLE: company_template_application_log
# ============================================================

Purpose:
Stores template application history.

Recommended columns:
- company_template_application_log_id
- company_draft_id
- company_template_code
- company_type
- applied_bundle_types
- application_mode
- applied_by
- applied_at
- notes


# ============================================================
# 10. TABLE: company_builder_audit_log
# ============================================================

Purpose:
Stores significant builder actions.

Recommended columns:
- company_builder_audit_log_id
- company_draft_id
- action_type
- action_scope
- actor_id
- actor_type
- action_payload
- created_at


# ============================================================
# 11. RELATIONSHIPS
# ============================================================

company_draft
  1 -> many company_draft_bundle

company_draft
  1 -> many company_validation_run

company_validation_run
  1 -> many company_validation_result

company_draft
  1 -> many company_approval_record

company_draft
  1 -> many company_establish_record

company_draft
  1 -> many company_template_application_log

company_draft
  1 -> many company_builder_audit_log


# ============================================================
# 12. FINAL RULE
# ============================================================

Company Builder persistence must be:
- draft-centric
- bundle-versioned
- validation-traceable
- establishment-traceable

No company should become established
without explicit persisted builder state.
