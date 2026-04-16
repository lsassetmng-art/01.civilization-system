# ============================================================
# SHIFT MANAGER PHASE 1 IMPLEMENTATION STARTER PACK
# ============================================================

status: implementation-entry
type: phase1-implementation-starter-pack
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This pack fixes the practical implementation starter details
for Phase 1.

It consolidates:
- backend endpoint implementation order
- SQL apply/review order
- DTO / Service / Repository starter mapping
- read-only insertion points
- phase 1 test viewpoints

# ============================================================
# 1. PHASE 1 TARGET
# ============================================================

phase_1_target:
Deliver the first safe usable draft-side slice with:
- bootstrap context
- subscription / feature gate resolution
- read-only enforcement
- schedule create/list/detail
- assignment create/update/list
- minimal weekly draft editing

# ============================================================
# 2. BACKEND ENDPOINT IMPLEMENTATION ORDER
# ============================================================

step_1_context:
- GET /api/shift-manager/v1/bootstrap
- GET /api/shift-manager/v1/subscription/status
- GET /api/shift-manager/v1/subscription/feature-gate
- GET /api/shift-manager/v1/subscription/trial-summary

required_outcome:
- current person/company/role resolved
- current site license resolved
- current subscription status resolved
- read_only_mode resolved
- feature gate map resolved

step_2_schedule_core:
- POST /api/shift-manager/v1/schedules
- GET /api/shift-manager/v1/schedules
- GET /api/shift-manager/v1/schedules/{schedule_id}

required_outcome:
- draft schedule create works
- list/detail works
- inactive blocks create

step_3_assignment_core:
- POST /api/shift-manager/v1/schedules/{schedule_id}/assignments
- PATCH /api/shift-manager/v1/assignments/{assignment_id}
- GET /api/shift-manager/v1/schedules/{schedule_id}/assignments

required_outcome:
- draft assignment create/update/list works
- inactive blocks create/update

step_4_guard_and_error_finish:
- subscription-related guard applied to all mutation endpoints above
- stable error envelope applied
- subscription-related error codes normalized

# ============================================================
# 3. SQL APPLY / REVIEW ORDER
# ============================================================

phase1_sql_apply_order:
1. 001_shift_manager_schema.sql
2. 010_shift_manager_core_tables.sql
3. 014_shift_manager_site_subscription_tables.sql
4. 020_shift_manager_indexes.sql
5. 021_shift_manager_subscription_indexes.sql
6. 030_shift_manager_updated_at_triggers.sql
7. 050_shift_manager_helper_functions.sql
8. 051_shift_manager_subscription_helper_functions.sql
9. 100_shift_manager_rls_enable.sql
10. 101_shift_manager_rls_helpers.sql
11. 102_shift_manager_rls_draft.sql
12. 103_shift_manager_rls_publication.sql
13. 108_shift_manager_rls_subscription_reference.sql

phase1_sql_review_points:
- schedule / assignment columns are sufficient for phase 1
- subscription tables support site-based gating
- helper functions match session context assumptions
- RLS draft/publication split is preserved
- subscription reference RLS does not weaken role/visibility model

phase1_sql_defer:
- 011 generation tables
- 012 history audit tables
- 013 pdf export tables
- 104 share
- 105 notification
- 106 erp
- 107 generation

# ============================================================
# 4. DTO STARTER MAPPING
# ============================================================

bootstrap_dto_set:
- bootstrap_response_dto
- profile_summary_dto
- subscription_status_dto
- feature_gate_dto
- read_only_state_dto

schedule_dto_set:
- schedule_create_request_dto
- schedule_summary_dto
- schedule_detail_dto

assignment_dto_set:
- assignment_create_request_dto
- assignment_update_request_dto
- assignment_summary_dto

common_dto_set:
- api_error_dto
- meta_request_id_dto

# ============================================================
# 5. SERVICE STARTER MAPPING
# ============================================================

context_services:
- bootstrap_service
- subscription_status_service
- feature_gate_service
- read_only_guard_service

draft_services:
- schedule_service
- assignment_service

service_rules:
- bootstrap_service resolves everything needed for initial UI routing
- read_only_guard_service is called before every mutation path in phase 1
- schedule_service must not know publication logic yet
- assignment_service must remain draft-side only in phase 1

# ============================================================
# 6. REPOSITORY STARTER MAPPING
# ============================================================

context_repositories:
- subscription_repository
- feature_gate_repository

draft_repositories:
- schedule_repository
- assignment_repository

repository_rules:
- repository layer returns app-facing stable shapes
- no publication tables are required in phase 1 write flow
- subscription repository resolves authoritative current site state

# ============================================================
# 7. UI SCREEN RESPONSIBILITY STARTER
# ============================================================

startup_initial_judge:
- call bootstrap
- route by access/subscription state

home_dashboard:
- show role summary
- show site/subscription state
- show read-only banner if inactive

shift_list:
- show schedules
- allow create only when feature gate allows

shift_create:
- create draft schedule
- validate scope/period basics
- block create when inactive

shift_detail:
- show schedule summary
- open edit if allowed

shift_edit:
- show assignment list
- allow add/update only when feature gate allows
- show validation errors
- remain viewable in read-only mode

week_view:
- primary phase 1 navigation/edit surface

# ============================================================
# 8. READ-ONLY INSERTION POINTS
# ============================================================

backend_insertion_points:
- before POST /schedules
- before POST /schedules/{schedule_id}/assignments
- before PATCH /assignments/{assignment_id}

ui_insertion_points:
- disable create button in shift_list
- disable save/create/update controls in shift_create and shift_edit
- show explicit blocked reason in inactive state
- preserve view-only navigation

important_rule:
Read-only blocks mutation,
but must not remove allowed viewing.

# ============================================================
# 9. VALIDATION PRIORITIES
# ============================================================

context_validation:
- authenticated context exists
- site license resolved
- subscription state resolved
- feature gate resolved

schedule_validation:
- schedule_name not empty
- target_scope_type valid
- target_period_type valid
- period_start_date <= period_end_date

assignment_validation:
- schedule exists
- person_id valid
- shift_date inside schedule period
- start_time < end_time
- overlap checked

gate_validation:
- inactive blocks all mutation endpoints above
- viewing endpoints remain usable where allowed

# ============================================================
# 10. ERROR CODE STARTER SET
# ============================================================

context_errors:
- unauthenticated
- app_access_denied
- role_context_missing
- SITE_LICENSE_NOT_FOUND
- SITE_SUBSCRIPTION_STATE_NOT_RESOLVED

subscription_errors:
- SUBSCRIPTION_TRIAL_EXPIRED
- SUBSCRIPTION_INACTIVE_READ_ONLY
- FEATURE_GATE_BLOCKED

schedule_errors:
- invalid_scope_type
- invalid_period_type
- invalid_period_range
- missing_target_scope_id
- duplicate_schedule_code
- schedule_not_found

assignment_errors:
- invalid_person_id
- invalid_time_range
- shift_date_out_of_period
- assignment_overlap
- assignment_not_found
- assignment_edit_denied

# ============================================================
# 11. PHASE 1 TEST VIEWPOINTS
# ============================================================

bootstrap_tests:
- active site returns read_only_mode=false
- inactive site returns read_only_mode=true
- feature gate map matches subscription state

schedule_tests:
- create succeeds in trial/active/grace
- create blocked in inactive
- list/detail remains viewable where allowed
- invalid period rejected

assignment_tests:
- create succeeds in trial/active/grace
- update succeeds in trial/active/grace
- create/update blocked in inactive
- invalid time rejected
- out-of-period rejected
- overlap rule works

ui_tests:
- read-only banner visible in inactive
- disabled mutation controls visible in inactive
- viewing still works

# ============================================================
# 12. PHASE 1 DONE CONDITIONS
# ============================================================

phase1_done_conditions:
- bootstrap returns role/subscription/feature gate/read_only info
- schedule create/list/detail works
- assignment create/update/list works
- read-only blocks mutation consistently
- viewing remains intact
- DTO/service/repository starter split exists
- stable error envelope exists
- weekly draft edit flow is usable

# ============================================================
# 13. IMMEDIATE NEXT AFTER PHASE 1
# ============================================================

next_after_phase1:
- validate-for-publication
- publish / republish
- share rule basics
- my shifts today/week
- visible publication view path

# ============================================================
# 14. CONCLUSION
# ============================================================

Phase 1 should now be implementable with a controlled and safe starting slice:
- context resolved
- subscription gate resolved
- draft schedule core usable
- assignment editing usable
- inactive safely read-only

