# ============================================================
# NATION BUILDER DB MODEL
# ============================================================

status: canonical
layer: model
scope: nation-builder
component: nation-builder-db-model

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official database model
for Nation Builder persistence.

The model must support:

- draft creation
- staged editing
- template application
- bundle-based storage
- validation runs
- approval review
- publication tracking
- activation tracking
- audit traceability

This model is designed for editable nation drafts,
not only final live nations.


# ============================================================
# 2. DESIGN PRINCIPLES
# ============================================================

Nation Builder DB model must follow these principles.

- parent draft identity must be explicit
- bundle storage must be separated from parent metadata
- validation history must be append-only
- approval/publication/activation records must be traceable
- current active bundle state must be queryable
- bundle payload must support JSON extensibility
- fail-closed status must be representable


# ============================================================
# 3. CORE TABLE SET
# ============================================================

The following core tables are official.

- nation_draft
- nation_draft_bundle
- nation_validation_run
- nation_validation_result
- nation_approval_record
- nation_publication_record
- nation_activation_record
- nation_template_application_log
- nation_builder_audit_log


# ============================================================
# 4. TABLE: nation_draft
# ============================================================

Purpose:
Stores the parent draft record.

Recommended columns:

- nation_draft_id
- draft_code
- draft_status
- builder_stage
- nation_template_code
- market_preset_code
- zone_map_ref
- created_by
- created_at
- updated_at
- current_validation_state
- current_approval_state
- current_publication_state
- current_activation_state
- is_deleted
- deleted_at

Recommended key meanings:

nation_draft_id:
- UUID primary key

draft_code:
- human-readable unique draft code

draft_status:
- current coarse status
- example:
  - draft
  - validation_pending
  - validation_passed
  - approval_pending
  - approved
  - publication_pending
  - published
  - activation_pending
  - activated
  - rejected
  - archived

builder_stage:
- current working stage
- example:
  - draft
  - validation
  - approval
  - publication
  - activation

current_validation_state:
- denormalized latest validation state

current_approval_state:
- denormalized latest approval state

current_publication_state:
- denormalized latest publication state

current_activation_state:
- denormalized latest activation state


# ============================================================
# 5. TABLE: nation_draft_bundle
# ============================================================

Purpose:
Stores current and historical bundle payloads
for a nation draft.

Recommended columns:

- nation_draft_bundle_id
- nation_draft_id
- bundle_type
- source_mode
- version_no
- is_current
- bundle_payload
- payload_hash
- updated_by
- updated_at

bundle_type examples:
- symbolic_identity_bundle
- basic_identity_bundle
- territory_bundle
- population_bundle
- currency_bundle
- governance_bundle
- regime_bundle
- zoning_bundle
- market_bundle
- facility_bundle
- infrastructure_bundle
- culture_bundle
- public_service_bundle
- holiday_bundle
- notification_profile_bundle

Rules:
- one draft may have many bundle rows
- bundle history is versioned
- only one row per draft + bundle_type may have is_current = true

bundle_payload:
- jsonb
- stores the actual bundle content

payload_hash:
- used for diff / audit / cache / review optimization


# ============================================================
# 6. TABLE: nation_validation_run
# ============================================================

Purpose:
Stores one validation execution header.

Recommended columns:

- nation_validation_run_id
- nation_draft_id
- validation_state
- builder_stage
- blocking_error_count
- warning_count
- info_count
- executed_by
- executed_at
- validation_profile_code
- notes

validation_state examples:
- not_run
- passed
- failed
- passed_with_warnings


# ============================================================
# 7. TABLE: nation_validation_result
# ============================================================

Purpose:
Stores per-code validation results.

Recommended columns:

- nation_validation_result_id
- nation_validation_run_id
- nation_draft_id
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

severity examples:
- ERR
- WARN
- INFO

Rules:
- results are append-only per validation run
- same code may appear again in later runs
- blocking semantics follow validation policy


# ============================================================
# 8. TABLE: nation_approval_record
# ============================================================

Purpose:
Stores approval workflow history.

Recommended columns:

- nation_approval_record_id
- nation_draft_id
- approval_state
- requested_at
- reviewed_at
- reviewed_by
- reviewer_notes
- approval_conditions
- source_validation_run_id
- created_at

approval_state examples:
- not_requested
- pending
- approved
- rejected

approval_conditions:
- jsonb
- supports conditional approvals if needed


# ============================================================
# 9. TABLE: nation_publication_record
# ============================================================

Purpose:
Stores publication workflow history.

Recommended columns:

- nation_publication_record_id
- nation_draft_id
- publication_state
- requested_at
- published_at
- blocked_at
- processed_by
- publication_notes
- source_approval_record_id
- created_at

publication_state examples:
- not_requested
- pending
- published
- blocked


# ============================================================
# 10. TABLE: nation_activation_record
# ============================================================

Purpose:
Stores activation workflow history.

Recommended columns:

- nation_activation_record_id
- nation_draft_id
- activation_state
- requested_at
- activated_at
- blocked_at
- processed_by
- activation_notes
- source_publication_record_id
- created_at

activation_state examples:
- not_requested
- pending
- activated
- blocked


# ============================================================
# 11. TABLE: nation_template_application_log
# ============================================================

Purpose:
Stores how template defaults were applied to the draft.

Recommended columns:

- nation_template_application_log_id
- nation_draft_id
- nation_template_code
- market_preset_code
- applied_bundle_types
- application_mode
- applied_by
- applied_at
- notes

application_mode examples:
- full_template_apply
- partial_template_apply
- blank_start

applied_bundle_types:
- jsonb array or text array


# ============================================================
# 12. TABLE: nation_builder_audit_log
# ============================================================

Purpose:
Stores builder-level trace and operator history.

Recommended columns:

- nation_builder_audit_log_id
- nation_draft_id
- action_type
- action_scope
- actor_id
- actor_type
- action_payload
- created_at

action_type examples:
- draft_created
- bundle_updated
- template_applied
- validation_executed
- approval_requested
- approval_reviewed
- publication_requested
- publication_processed
- activation_requested
- activation_processed

actor_type examples:
- user
- reviewer
- system


# ============================================================
# 13. RECOMMENDED RELATIONSHIPS
# ============================================================

nation_draft
  1 -> many nation_draft_bundle

nation_draft
  1 -> many nation_validation_run

nation_validation_run
  1 -> many nation_validation_result

nation_draft
  1 -> many nation_approval_record

nation_draft
  1 -> many nation_publication_record

nation_draft
  1 -> many nation_activation_record

nation_draft
  1 -> many nation_template_application_log

nation_draft
  1 -> many nation_builder_audit_log


# ============================================================
# 14. CURRENT STATE QUERY MODEL
# ============================================================

Current state should normally be derived as follows.

Current draft metadata:
- nation_draft

Current bundle values:
- nation_draft_bundle where is_current = true

Latest validation:
- latest nation_validation_run by executed_at

Latest approval state:
- latest nation_approval_record by created_at

Latest publication state:
- latest nation_publication_record by created_at

Latest activation state:
- latest nation_activation_record by created_at

Denormalized status columns in nation_draft
may be updated for fast UI reads.


# ============================================================
# 15. VERSIONING MODEL
# ============================================================

Bundle versioning is required.

Rules:
- each edit creates a new version_no
- older versions remain stored
- exactly one current row per draft + bundle_type
- validation refers to the effective current bundle set at run time

This makes review and rollback easier.


# ============================================================
# 16. JSONB PAYLOAD STRATEGY
# ============================================================

bundle_payload should remain flexible,
but several searchable keys may be duplicated into columns later
if performance requires it.

Examples of future extracted columns:
- formal_name
- nation_type
- capital_city_code
- governance_style
- listing_system_style

Initial canonical design keeps these inside bundle_payload
unless a concrete query need justifies extraction.


# ============================================================
# 17. STATUS TRANSITION RULES
# ============================================================

The following transitions are recommended.

draft
-> validation_pending
-> validation_passed or draft

validation_passed
-> approval_pending
-> approved or rejected

approved
-> publication_pending
-> published or blocked

published
-> activation_pending
-> activated or blocked

No later state may be assumed
without a corresponding record table entry.


# ============================================================
# 18. FAIL-CLOSED REQUIREMENTS
# ============================================================

Activation must not occur if:

- current_validation_state is failed
- current_approval_state is not approved
- current_publication_state is not published
- required bundles are unresolved
- blocking validation results remain open

Publication must not occur if:
- approval is not complete
- blocking validation remains unresolved

Approval request must not proceed if:
- mandatory validation gate is not passed


# ============================================================
# 19. RECOMMENDED INDEXES
# ============================================================

Recommended indexes:

nation_draft:
- unique(draft_code)
- index(builder_stage)
- index(draft_status)

nation_draft_bundle:
- index(nation_draft_id, bundle_type, is_current)
- unique(nation_draft_id, bundle_type, version_no)

nation_validation_run:
- index(nation_draft_id, executed_at desc)

nation_validation_result:
- index(nation_validation_run_id)
- index(nation_draft_id, severity)

nation_approval_record:
- index(nation_draft_id, created_at desc)

nation_publication_record:
- index(nation_draft_id, created_at desc)

nation_activation_record:
- index(nation_draft_id, created_at desc)

nation_builder_audit_log:
- index(nation_draft_id, created_at desc)


# ============================================================
# 20. OFFICIAL LOGICAL SCHEMA SUMMARY
# ============================================================

nation_draft
- parent draft header

nation_draft_bundle
- bundle payload store
- versioned
- current flag

nation_validation_run
- validation execution header

nation_validation_result
- detailed code results

nation_approval_record
- approval history

nation_publication_record
- publication history

nation_activation_record
- activation history

nation_template_application_log
- template application history

nation_builder_audit_log
- all significant builder actions


# ============================================================
# 21. FUTURE EXPANSION
# ============================================================

The following future tables may be added if needed.

- nation_bundle_diff_record
- nation_reviewer_assignment
- nation_public_profile_snapshot
- nation_zone_map_snapshot
- nation_market_editor_snapshot
- nation_placement_snapshot

These are optional and should be added only when
operational complexity justifies them.


# ============================================================
# 22. FINAL RULE
# ============================================================

Nation Builder persistence must be draft-centric,
bundle-versioned,
validation-traceable,
and fail-closed.

No nation may advance by UI convenience alone.
Each stage must be supported by explicit persisted state.
