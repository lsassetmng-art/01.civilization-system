# ============================================================
# SHIFT MANAGER ENDPOINT VALIDATION MATRIX
# ============================================================

status: implementation-facing-validation-candidate
type: endpoint-validation-matrix
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes validation expectations
for each major ShiftManager endpoint.

The goal is to make explicit:
- required inputs
- optional inputs
- enum checks
- main validation rules
- major error categories

# ============================================================
# 2. BOOTSTRAP
# ============================================================

endpoint:
GET /api/shift-manager/v1/bootstrap

input:
- none

validation:
- authenticated context must exist
- app access decision must be resolvable
- role context must be resolvable

major_errors:
- unauthenticated
- app_access_denied
- role_context_missing

# ============================================================
# 3. SCHEDULE CREATE
# ============================================================

endpoint:
POST /api/shift-manager/v1/schedules

required_inputs:
- schedule_name: string
- target_scope_type: enum
- target_period_type: enum
- period_start_date: date
- period_end_date: date

optional_inputs:
- target_scope_id: uuid|null
- note: string|null

enum_checks:
target_scope_type:
- team
- department
- office
- mixed

target_period_type:
- day
- week
- month

validation:
- schedule_name must not be empty
- period_start_date must be <= period_end_date
- target_scope_type must be valid enum
- target_period_type must be valid enum
- target_scope_id may be required depending on scope type
- generated schedule_code must remain unique inside company

major_errors:
- invalid_scope_type
- invalid_period_type
- invalid_period_range
- missing_target_scope_id
- duplicate_schedule_code

# ============================================================
# 4. SCHEDULE LIST / DETAIL
# ============================================================

endpoint_list:
GET /api/shift-manager/v1/schedules

endpoint_detail:
GET /api/shift-manager/v1/schedules/{schedule_id}

validation:
- schedule_id must be valid uuid
- schedule must exist
- caller must have schedule visibility

major_errors:
- invalid_schedule_id
- schedule_not_found
- schedule_access_denied

# ============================================================
# 5. ASSIGNMENT CREATE
# ============================================================

endpoint:
POST /api/shift-manager/v1/schedules/{schedule_id}/assignments

required_inputs:
- person_id: uuid
- shift_date: date
- start_time: time
- end_time: time

optional_inputs:
- role_code: string|null
- office_id: uuid|null
- department_id: uuid|null
- team_id: uuid|null
- memo: string|null

validation:
- parent schedule must exist
- parent schedule must be draft
- person_id must be valid
- start_time must be < end_time
- shift_date must be inside schedule period
- caller must have assignment edit authority
- overlapping assignment policy must be checked

major_errors:
- schedule_not_found
- schedule_not_draft
- invalid_person_id
- invalid_time_range
- shift_date_out_of_period
- assignment_overlap
- assignment_edit_denied

# ============================================================
# 6. ASSIGNMENT UPDATE
# ============================================================

endpoint:
PATCH /api/shift-manager/v1/assignments/{assignment_id}

optional_inputs:
- start_time
- end_time
- role_code
- office_id
- department_id
- team_id
- memo

validation:
- assignment must exist
- parent schedule must still be draft
- updated start_time must be < end_time
- updated assignment must remain inside schedule period
- caller must have assignment edit authority

major_errors:
- assignment_not_found
- schedule_not_draft
- invalid_time_range
- shift_date_out_of_period
- assignment_edit_denied

# ============================================================
# 7. VALIDATE FOR PUBLICATION
# ============================================================

endpoint:
POST /api/shift-manager/v1/schedules/{schedule_id}/validate-for-publication

validation:
- schedule must exist
- schedule must be draft
- caller must have validation authority
- unassigned slot count must be calculable
- generation warning count must be calculable
- visibility estimate must be calculable

major_errors:
- schedule_not_found
- schedule_not_draft
- validation_execution_denied
- visibility_estimation_failed

# ============================================================
# 8. PUBLISH
# ============================================================

endpoint:
POST /api/shift-manager/v1/schedules/{schedule_id}/publish

optional_inputs:
- publication_note: string|null
- notification_requested: boolean
- erp_export_required: boolean

validation:
- schedule must exist
- schedule must be draft
- caller must have publish authority
- validation readiness must be acceptable
- publication version number must be issuable
- publication snapshot must be creatable

major_errors:
- schedule_not_found
- schedule_not_draft
- publish_denied
- validation_not_ready
- publication_snapshot_failed
- publication_version_conflict

# ============================================================
# 9. REPUBLISH
# ============================================================

endpoint:
POST /api/shift-manager/v1/schedules/{schedule_id}/republish

optional_inputs:
- publication_note: string|null
- notification_requested: boolean
- erp_export_required: boolean

validation:
- schedule must exist
- caller must have republish authority
- active publication must exist
- new publication snapshot must be creatable
- previous active publication must be supersedable

major_errors:
- schedule_not_found
- republish_denied
- active_publication_not_found
- publication_snapshot_failed
- supersede_failed

# ============================================================
# 10. SHARE RULE CREATE
# ============================================================

endpoint:
POST /api/shift-manager/v1/share-rules

required_inputs:
- rule_name: string
- scope_type: enum
- visibility_level: enum
- applies_to_schedule_id: uuid
- targets: array

required_target_item_fields:
- target_type: enum
- target_id: uuid

enum_checks:
scope_type:
- person
- team
- department
- management_scope

visibility_level:
- self_only
- assigned_members
- team_visible
- department_visible
- manager_visible

target_type:
- person
- team
- department
- role

validation:
- rule_name must not be empty
- targets must contain at least 1 item
- caller must have share-management authority
- applies_to_schedule_id must exist
- each target_type must be valid
- each target_id must be valid in company context

major_errors:
- share_rule_invalid
- empty_targets
- share_manage_denied
- invalid_target_type
- invalid_target_id
- cross_company_target_denied

# ============================================================
# 11. SHARE PREVIEW
# ============================================================

endpoint:
GET /api/shift-manager/v1/publications/{publication_id}/share-preview

validation:
- publication must exist
- caller must have share preview authority
- visibility evaluation must be executable

major_errors:
- publication_not_found
- share_preview_denied
- visibility_evaluation_failed

# ============================================================
# 12. VIEWING: TODAY / WEEK
# ============================================================

endpoint_today:
GET /api/shift-manager/v1/me/shifts/today

endpoint_week:
GET /api/shift-manager/v1/me/shifts/week

validation:
- current person context must exist
- only visible publication-based assignments may be returned
- week filter, if present, must be valid

major_errors:
- person_context_missing
- visibility_context_missing
- invalid_week_start_date

# ============================================================
# 13. PUBLICATION ASSIGNMENT DETAIL
# ============================================================

endpoint:
GET /api/shift-manager/v1/publication-assignments/{publication_assignment_id}

validation:
- publication_assignment_id must be valid
- publication assignment must exist
- publication must be visible
- visible person in publication must be visible to caller

major_errors:
- publication_assignment_not_found
- publication_access_denied
- person_visibility_denied

# ============================================================
# 14. NOTIFICATION LIST / READ
# ============================================================

endpoint_list:
GET /api/shift-manager/v1/me/notifications

endpoint_read:
POST /api/shift-manager/v1/me/notifications/{notification_id}/read

validation:
- notification must exist
- target_person_id must match current person or allowed manager exception
- read update must be allowed

major_errors:
- notification_not_found
- notification_access_denied
- notification_update_denied

# ============================================================
# 15. ERP EXPORT
# ============================================================

endpoint:
POST /api/shift-manager/v1/publications/{publication_id}/export-erp

required_inputs:
- export_mode: enum

enum_checks:
export_mode:
- manual
- automatic

validation:
- publication must exist
- publication must be active
- caller must have ERP export authority
- export_mode must be valid
- duplicate active export must be prevented
- publication-based ERP payload must be buildable

major_errors:
- publication_not_found
- publication_not_active
- erp_export_denied
- invalid_export_mode
- duplicate_export_request
- erp_payload_build_failed

# ============================================================
# 16. ERP LINKAGE DETAIL
# ============================================================

endpoint:
GET /api/shift-manager/v1/publications/{publication_id}/erp-linkage

validation:
- publication must exist
- caller must have ERP linkage visibility

major_errors:
- publication_not_found
- erp_linkage_access_denied
- linkage_state_not_found

# ============================================================
# 17. GENERATION RULE CREATE
# ============================================================

endpoint:
POST /api/shift-manager/v1/generation-rules

required_inputs:
- rule_name: string
- target_scope_type: enum
- period_type: enum
- condition_json: object

optional_inputs:
- target_scope_id: uuid|null
- priority_policy: string|null

enum_checks:
target_scope_type:
- team
- department
- office
- mixed

period_type:
- day
- week
- month

validation:
- rule_name must not be empty
- condition_json must be object
- slot_requirements must contain at least 1 item
- slot start_time must be < end_time
- required_headcount must be >= 1
- weekdays must be from allowed enum
- caller must have generation rule management authority

major_errors:
- invalid_generation_rule
- invalid_condition_json
- empty_slot_requirements
- invalid_weekday
- invalid_slot_time
- generation_rule_manage_denied

# ============================================================
# 18. AUTO GENERATE
# ============================================================

endpoint:
POST /api/shift-manager/v1/schedules/auto-generate

required_inputs:
- schedule_name: string
- target_scope_type: enum
- target_period_type: enum
- period_start_date: date
- period_end_date: date
- generation_rule_id: uuid
- overwrite_policy: enum

optional_inputs:
- target_scope_id: uuid|null

enum_checks:
overwrite_policy:
- create_new_schedule
- replace_existing_draft
- merge_into_existing_draft

validation:
- generation_rule must exist
- caller must have auto-generate authority
- period must be valid
- rule scope and request scope must be compatible
- overwrite_policy must be valid
- draft generation must be executable
- generation warnings must be creatable

major_errors:
- generation_rule_not_found
- auto_generate_denied
- invalid_period_range
- scope_rule_mismatch
- invalid_overwrite_policy
- draft_generation_failed

# ============================================================
# 19. GENERATION RESULT / WARNINGS
# ============================================================

endpoint_result:
GET /api/shift-manager/v1/schedules/{schedule_id}/generation-result

endpoint_warnings:
GET /api/shift-manager/v1/schedules/{schedule_id}/generation-warnings

validation:
- schedule must exist
- generation_result must exist
- caller must have generation visibility

major_errors:
- schedule_not_found
- generation_result_not_found
- generation_result_access_denied

# ============================================================
# 20. PDF EXPORT
# ============================================================

endpoint_draft:
POST /api/shift-manager/v1/schedules/{schedule_id}/export-pdf

endpoint_publication:
POST /api/shift-manager/v1/publications/{publication_id}/export-pdf

required_inputs:
- export_type: enum
- layout_type: enum

optional_inputs:
- include_memo: boolean

enum_checks:
export_type:
- draft_pdf
- publication_pdf
- personal_pdf
- department_pdf
- board_pdf

layout_type:
- weekly_a4
- monthly_a4
- personal_compact
- board_a4
- board_a3

validation:
- target schedule/publication must exist
- export_type must be compatible with target type
- draft_pdf must use draft basis
- publication_pdf must use publication basis
- caller must have printable export authority
- layout_type must be valid
- PDF render must succeed
- export history save must succeed

major_errors:
- pdf_target_not_found
- invalid_export_type
- invalid_layout_type
- export_target_mismatch
- pdf_export_denied
- pdf_render_failed
- pdf_history_save_failed

# ============================================================
# 21. FIXED VALIDATION PRIORITIES
# ============================================================

fixed_priorities:
- publish depends on validation readiness
- generation depends heavily on condition_json validity
- share depends heavily on target/company integrity
- ERP export depends on active publication
- PDF export depends on target/export_type compatibility

# ============================================================
# 22. CONCLUSION
# ============================================================

This document fixes:
- required inputs
- optional inputs
- enum checks
- main validation rules
- major error categories

for the major ShiftManager endpoints before implementation.


# SHIFT_MANAGER_SUBSCRIPTION_VALIDATION_EXTENSION_BEGIN
# ============================================================
# 23. SUBSCRIPTION / FEATURE GATE VALIDATION EXTENSION
# ============================================================

common_subscription_checks_for_mutation_endpoints:
- site license must be resolvable
- site subscription status must be resolvable
- requested feature must be allowed by feature gate
- inactive state must block mutation/management endpoints before business execution

recommended_subscription_error_codes:
- SITE_LICENSE_NOT_FOUND
- SITE_SUBSCRIPTION_STATE_NOT_RESOLVED
- SUBSCRIPTION_TRIAL_EXPIRED
- SUBSCRIPTION_INACTIVE_READ_ONLY
- FEATURE_GATE_BLOCKED

affected_endpoint_groups:
- schedule create/update
- assignment create/update
- auto generation
- publish / republish
- share management
- PDF export
- ERP export
- generation rule management

viewing_endpoints_rule:
Viewing endpoints remain available in inactive state,
but still require normal role / visibility checks.

# SHIFT_MANAGER_SUBSCRIPTION_VALIDATION_EXTENSION_END
