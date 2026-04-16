# ============================================================
# SHIFT MANAGER PHASE 1 DETAILED TASK BREAKDOWN
# ============================================================

status: implementation-entry
type: phase1-detailed-task-breakdown
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This document breaks Phase 1
into concrete implementation-ready task groups.

Phase 1 focus:
- foundation
- bootstrap
- subscription / feature gate
- draft-side schedule core
- assignment core
- read-only safety

# ============================================================
# 1. PHASE 1 GOAL
# ============================================================

goal:
Make ShiftManager minimally usable and safe,
with:
- user/site context resolution
- subscription gate resolution
- draft schedule creation and editing
- assignment editing
- read-only blocking when inactive

# ============================================================
# 2. PHASE 1 SCOPE
# ============================================================

included:
- bootstrap
- site subscription status resolution
- feature gate evaluation
- read-only mode detection
- schedule create/list/detail
- assignment create/update/list
- minimal draft edit UI
- basic validation and error handling

excluded_for_now:
- publish / republish
- share management
- view_scope rebuild
- generation
- PDF export
- notification flow
- ERP export

# ============================================================
# 3. RECOMMENDED IMPLEMENTATION ORDER
# ============================================================

implementation_order:
1. package/module starter structure
2. auth/bootstrap/subscription context
3. schedule backend core
4. assignment backend core
5. minimal draft edit screens
6. read-only enforcement pass
7. phase-1 validation pass

# ============================================================
# 4. BACKEND TASKS
# ============================================================

backend_task_group_1_context:
- define bootstrap response DTO
- resolve current person/company/roles
- resolve site_license_id
- resolve subscription_status
- resolve feature_gate object
- expose read_only_mode flag

backend_task_group_2_schedule:
- implement POST /schedules
- implement GET /schedules
- implement GET /schedules/{schedule_id}
- validate target_scope_type
- validate target_period_type
- validate period range
- prepare schedule_code generation path

backend_task_group_3_assignment:
- implement POST /schedules/{schedule_id}/assignments
- implement PATCH /assignments/{assignment_id}
- implement GET /schedules/{schedule_id}/assignments
- validate person_id
- validate start_time < end_time
- validate shift_date inside schedule period
- validate overlap policy

backend_task_group_4_gate_and_errors:
- block mutation endpoints when inactive
- return subscription-related error codes
- preserve read access when inactive
- normalize error envelope usage

# ============================================================
# 5. UI TASKS
# ============================================================

ui_task_group_1_context:
- bootstrap loading state
- access denied state
- read-only banner/pill
- current subscription status indicator

ui_task_group_2_schedule:
- shift list screen
- shift create screen
- shift detail screen

ui_task_group_3_assignment:
- shift edit screen
- assignment add form
- assignment update form
- list refresh after mutation

ui_task_group_4_read_only:
- disable buttons when inactive
- show reason for blocked actions
- keep viewing screens usable

# ============================================================
# 6. DATABASE / SQL TASKS
# ============================================================

database_task_group_1_required_sql:
- 001_shift_manager_schema.sql
- 010_shift_manager_core_tables.sql
- 020_shift_manager_indexes.sql
- 030_shift_manager_updated_at_triggers.sql
- 050_shift_manager_helper_functions.sql

database_task_group_2_subscription_sql:
- 014_shift_manager_site_subscription_tables.sql
- 021_shift_manager_subscription_indexes.sql
- 051_shift_manager_subscription_helper_functions.sql

database_task_group_3_security_minimum:
- 100_shift_manager_rls_enable.sql
- 101_shift_manager_rls_helpers.sql
- 102_shift_manager_rls_draft.sql
- 103_shift_manager_rls_publication.sql
- 108_shift_manager_rls_subscription_reference.sql

# ============================================================
# 7. DTO / SERVICE / REPOSITORY START SET
# ============================================================

dto_start_set:
- bootstrap_response_dto
- subscription_status_dto
- feature_gate_dto
- schedule_create_request_dto
- schedule_summary_dto
- schedule_detail_dto
- assignment_create_request_dto
- assignment_update_request_dto
- assignment_summary_dto
- api_error_dto

service_start_set:
- bootstrap_service
- subscription_gate_service
- schedule_service
- assignment_service
- read_only_guard_service

repository_start_set:
- schedule_repository
- assignment_repository
- subscription_repository
- feature_gate_repository

# ============================================================
# 8. DEPENDENCY ORDER
# ============================================================

dependency_order:
bootstrap_service depends_on:
- auth context
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
- schedule detail API
- assignment list/create/update APIs

# ============================================================
# 9. READ-ONLY INSERTION POINTS
# ============================================================

read_only_insertion_points:
backend:
- before create schedule
- before update assignment
- before any future mutation endpoint

ui:
- before opening edit mutation actions
- disable create/edit buttons
- show explicit blocked message

important_rule:
Read-only must block mutation,
but must not hide already allowed viewing.

# ============================================================
# 10. VALIDATION PRIORITIES
# ============================================================

phase1_validation_priorities:
- subscription state resolved
- feature gate resolved
- invalid period range rejected
- invalid time range rejected
- out-of-period assignment rejected
- inactive mutation blocked
- normal viewing preserved

# ============================================================
# 11. PHASE 1 DONE CONDITIONS
# ============================================================

done_conditions:
- bootstrap returns subscription/feature gate/read_only info
- manager can create draft schedule when active/trial/grace
- manager can edit assignments when active/trial/grace
- inactive state blocks create/edit
- shift list/detail remain viewable where allowed
- error envelopes are stable
- core DTO/service/repository split exists

# ============================================================
# 12. AFTER PHASE 1
# ============================================================

next_after_phase1:
- publish / republish
- share rule management
- share preview
- visible publication viewing
- my shifts today/week

# ============================================================
# 13. CONCLUSION
# ============================================================

Phase 1 should produce:
- safe app startup context
- safe subscription gate behavior
- working draft-side schedule core
- working assignment edit core
- clear read-only blocking

This is the correct first usable implementation slice.

