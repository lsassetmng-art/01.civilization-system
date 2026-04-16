# ============================================================
# SHIFT MANAGER PHASE 1 IMPLEMENTATION ENTRY PACK
# ============================================================

status: implementation-entry
type: phase1-implementation-entry-pack
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This pack consolidates the practical implementation-entry details
for Phase 1 of ShiftManager.

It fixes in one place:
- backend endpoint implementation order
- DTO / Service / Repository mapping
- UI screen responsibility mapping
- SQL apply order
- test viewpoints
- phase completion conditions

# ============================================================
# 1. PHASE 1 TARGET
# ============================================================

phase_1_target:
Build the first safe and usable draft-side core with:
- bootstrap context
- subscription / feature gate resolution
- read-only enforcement
- schedule create/list/detail
- assignment create/update/list
- minimal draft edit UI

phase_1_excludes:
- publish / republish
- share rule management
- share preview
- generation
- PDF export
- ERP export
- notification generation flow

# ============================================================
# 2. BACKEND ENDPOINT IMPLEMENTATION ORDER
# ============================================================

batch_1_context:
1. GET /api/shift-manager/v1/bootstrap
2. GET /api/shift-manager/v1/subscription/status
3. GET /api/shift-manager/v1/subscription/feature-gate
4. GET /api/shift-manager/v1/subscription/trial-summary

goal:
Resolve:
- person/company/role context
- site license context
- subscription status
- read_only_mode
- feature gate map

batch_2_schedule:
5. POST /api/shift-manager/v1/schedules
6. GET /api/shift-manager/v1/schedules
7. GET /api/shift-manager/v1/schedules/{schedule_id}

goal:
Enable safe draft schedule creation and browsing.

batch_3_assignment:
8. POST /api/shift-manager/v1/schedules/{schedule_id}/assignments
9. PATCH /api/shift-manager/v1/assignments/{assignment_id}
10. GET /api/shift-manager/v1/schedules/{schedule_id}/assignments

goal:
Enable safe draft assignment editing.

batch_4_guard_finish:
11. apply read-only checks to all mutation endpoints above
12. normalize error envelope and subscription-related errors
13. add minimum audit/log hooks if needed

# ============================================================
# 3. DTO / SERVICE / REPOSITORY MAPPING
# ============================================================

dto_mapping:
bootstrap:
- bootstrap_response_dto
- profile_dto
- capability_dto
- subscription_status_dto
- feature_gate_dto

schedule:
- schedule_create_request_dto
- schedule_summary_dto
- schedule_detail_dto

assignment:
- assignment_create_request_dto
- assignment_update_request_dto
- assignment_summary_dto

common:
- api_error_dto
- request_meta_dto

service_mapping:
context_services:
- bootstrap_service
- subscription_status_service
- feature_gate_service
- read_only_guard_service

draft_services:
- schedule_service
- assignment_service

repository_mapping:
context_repositories:
- subscription_repository
- feature_gate_repository

draft_repositories:
- schedule_repository
- assignment_repository

# ============================================================
# 4. DEPENDENCY ORDER
# ============================================================

dependency_order:
bootstrap_service depends_on:
- auth/session context
- subscription_repository
- feature_gate_repository

schedule_service depends_on:
- schedule_repository
- read_only_guard_service

assignment_service depends_on:
- assignment_repository
- schedule_repository
- read_only_guard_service

ui_shift_edit depends_on:
- bootstrap context
- schedule detail endpoint
- assignment list/create/update endpoints

# ============================================================
# 5. UI SCREEN RESPONSIBILITY MAP
# ============================================================

screen_1_startup_initial_judge:
responsibility:
- load bootstrap
- resolve access
- resolve subscription/read_only mode
- route to dashboard or today view

screen_2_login_access_confirmation:
responsibility:
- show access issue
- show app access denied / unauthenticated guidance

screen_3_home_dashboard:
responsibility:
- show current role summary
- show site/subscription state
- show read-only state clearly
- route to shift list

screen_4_shift_list:
responsibility:
- list schedules
- open schedule detail
- open create flow if allowed

screen_5_shift_create:
responsibility:
- create draft schedule
- validate scope/period basics
- block create when inactive

screen_6_shift_detail:
responsibility:
- show draft schedule summary
- show assignment count
- enter edit mode if allowed

screen_7_shift_edit:
responsibility:
- list assignments
- create assignment
- edit assignment
- respect read-only state
- show validation errors clearly

screen_8_week_view:
responsibility:
- render weekly draft view
- act as main editing/navigation surface for phase 1

read_only_ui_rule:
All mutation buttons must be disabled or blocked with explicit reason
when subscription state is inactive.

# ============================================================
# 6. SQL APPLY ORDER
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

phase1_sql_skip_for_now:
- 011 generation tables
- 012 history/audit tables
- 013 pdf export tables
- 104 share
- 105 notification
- 106 erp
- 107 generation

# ============================================================
# 7. VALIDATION PRIORITIES
# ============================================================

phase1_validation_priorities:
context:
- authenticated context exists
- site license resolved
- subscription status resolved
- feature gate resolved

schedule:
- schedule_name not empty
- valid target_scope_type
- valid target_period_type
- period_start_date <= period_end_date

assignment:
- valid schedule_id
- valid person_id
- start_time < end_time
- shift_date inside schedule period
- overlap rule checked

gate:
- inactive blocks all mutation endpoints
- viewing endpoints remain usable where allowed

# ============================================================
# 8. ERROR CODE PRIORITIES
# ============================================================

phase1_error_codes:
context:
- unauthenticated
- app_access_denied
- role_context_missing
- SITE_LICENSE_NOT_FOUND
- SITE_SUBSCRIPTION_STATE_NOT_RESOLVED

subscription:
- SUBSCRIPTION_TRIAL_EXPIRED
- SUBSCRIPTION_INACTIVE_READ_ONLY
- FEATURE_GATE_BLOCKED

schedule:
- invalid_scope_type
- invalid_period_type
- invalid_period_range
- missing_target_scope_id
- duplicate_schedule_code
- schedule_not_found

assignment:
- invalid_person_id
- invalid_time_range
- shift_date_out_of_period
- assignment_overlap
- assignment_not_found
- assignment_edit_denied

# ============================================================
# 9. TEST VIEWPOINTS
# ============================================================

phase1_test_viewpoints:
bootstrap_tests:
- active site returns read_only_mode=false
- inactive site returns read_only_mode=true
- feature gate map matches subscription state

schedule_tests:
- create schedule succeeds in active/trial/grace
- create schedule blocked in inactive
- list/detail remains viewable where allowed
- invalid period rejected

assignment_tests:
- create assignment succeeds in active/trial/grace
- update assignment succeeds in active/trial/grace
- create/update blocked in inactive
- invalid time rejected
- out-of-period assignment rejected
- overlap rejected according to policy

ui_tests:
- read-only banner shown in inactive
- disabled mutation controls shown in inactive
- allowed viewing still works

# ============================================================
# 10. PHASE 1 DONE CONDITIONS
# ============================================================

phase1_done_conditions:
- bootstrap returns role/subscription/feature gate/read_only info
- schedule create/list/detail works
- assignment create/update/list works
- read-only blocks mutation endpoints consistently
- allowed viewing remains intact
- DTO/service/repository starter split exists
- error envelope is stable for phase1 endpoints
- first weekly draft edit flow is usable

# ============================================================
# 11. PHASE 1 SAFE DEFER ITEMS
# ============================================================

safe_defer_items:
- publish / republish
- visibility scope rebuild
- share preview
- generation
- PDF export
- ERP export
- advanced UI polish
- advanced audit/history surfaces

# ============================================================
# 12. IMMEDIATE NEXT AFTER PHASE 1
# ============================================================

next_after_phase1:
- validate-for-publication
- publish / republish
- share rule basics
- my shifts today/week
- visible publication view path

# ============================================================
# 13. CONCLUSION
# ============================================================

Phase 1 should deliver the first safe usable slice of ShiftManager:
- context resolved
- subscription gate resolved
- draft schedule core usable
- assignment editing usable
- inactive state safely read-only

