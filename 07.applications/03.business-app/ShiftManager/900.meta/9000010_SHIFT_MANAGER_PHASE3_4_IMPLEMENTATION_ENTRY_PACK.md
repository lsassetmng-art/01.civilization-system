# ============================================================
# SHIFT MANAGER PHASE 3-4 IMPLEMENTATION ENTRY PACK
# ============================================================

status: implementation-entry
type: phase3-4-implementation-entry-pack
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This pack consolidates the implementation-entry details
for Phase 3 and Phase 4 of ShiftManager.

It fixes in one place:
- generation implementation order
- PDF / notification / ERP preparation boundary
- DTO / Service / Repository starter mapping
- additional feature integration points
- test viewpoints
- phase completion conditions

# ============================================================
# 1. PHASE 3-4 TARGET
# ============================================================

phase_3_target:
Deliver the first safe generation-side slice with:
- generation rule create/read/update basics
- condition_json validation
- draft auto-generate
- generation_result / generation_warning visibility
- manager reviewable generated draft

phase_4_target:
Deliver the first practical operation-extended slice with:
- scheduled auto-generation basics
- requested day-off input basics
- change confirmation basis
- shortage / difference / unconfirmed visualization basis
- lightweight multi-site visibility preparation

phase_3_4_excludes:
- full PDF rendering completion
- full notification flow completion
- ERP export completion
- exchange/support implementation
- advanced optimizer behavior

# ============================================================
# 2. BACKEND IMPLEMENTATION ORDER
# ============================================================

step_1_generation_rule:
- POST /api/shift-manager/v1/generation-rules
- GET /api/shift-manager/v1/generation-rules
- PATCH /api/shift-manager/v1/generation-rules/{generation_rule_id}

required_outcome:
- generation rule CRUD basics work
- condition_json is stored safely
- manager-only access is preserved

step_2_auto_generation_core:
- POST /api/shift-manager/v1/schedules/auto-generate
- GET /api/shift-manager/v1/schedules/{schedule_id}/generation-result
- GET /api/shift-manager/v1/schedules/{schedule_id}/generation-warnings

required_outcome:
- draft can be generated from rule
- generation_result persists
- generation_warning persists
- generated draft remains editable
- inactive blocks generation mutation

step_3_requested_day_off_basics:
- POST /api/shift-manager/v1/requested-day-off
- GET /api/shift-manager/v1/requested-day-off/me
- GET /api/shift-manager/v1/requested-day-off/review
- PATCH /api/shift-manager/v1/requested-day-off/{requested_day_off_id}

required_outcome:
- staff can submit requested day off
- manager can review/approve/reject
- approved requests can later feed planning/generation

step_4_scheduled_generation_basics:
- POST /api/shift-manager/v1/auto-generation-schedules
- GET /api/shift-manager/v1/auto-generation-schedules
- PATCH /api/shift-manager/v1/auto-generation-schedules/{auto_generation_schedule_id}
- POST /api/shift-manager/v1/auto-generation-schedules/{auto_generation_schedule_id}/run-now
- GET /api/shift-manager/v1/auto-generation-schedules/{auto_generation_schedule_id}/executions

required_outcome:
- weekly/monthly timer definition saved
- run-now works
- execution history persists
- inactive causes skip, not execution
- timer remains draft-only

step_5_difference_confirmation_basis:
- GET /api/shift-manager/v1/publications/{publication_id}/differences
- POST /api/shift-manager/v1/publications/{publication_id}/confirm-change
- GET /api/shift-manager/v1/publications/{publication_id}/change-confirmation-status

required_outcome:
- republish differences are visible
- affected viewers can mark confirmed
- manager can see pending vs confirmed counts

step_6_headquarters_preparation_basis:
- GET /api/shift-manager/v1/headquarters/site-dashboard
- GET /api/shift-manager/v1/headquarters/site-analytics

required_outcome:
- site-level counts can be shown
- shortage/unconfirmed/failed-export placeholders can be surfaced
- lightweight multi-site visibility exists

# ============================================================
# 3. SQL APPLY / REVIEW ORDER
# ============================================================

phase3_4_sql_apply_order:
1. 011_shift_manager_generation_tables.sql
2. 012_shift_manager_history_audit_tables.sql
3. review 014_shift_manager_site_subscription_tables.sql reuse
4. add additional feature tables in later exact pack:
   - shift_requested_day_off
   - shift_publication_difference
   - shift_change_confirmation
   - shift_auto_generation_schedule
   - shift_auto_generation_execution
   - shift_site_dashboard_snapshot
   - shift_site_analytics_snapshot
5. review 107_shift_manager_rls_generation.sql
6. review 105_shift_manager_rls_notification.sql only as preparation boundary
7. review 108_shift_manager_rls_subscription_reference.sql for timer skip logic dependency

phase3_4_sql_review_points:
- generation result/warning tables are sufficient
- requested day-off status model is simple enough
- timer schedule fields support weekly / monthly_fixed_day / monthly_last_day
- difference / confirmation model is publication-safe
- site analytics stays lightweight
- timer execution never weakens publish manual rule

# ============================================================
# 4. DTO STARTER MAPPING
# ============================================================

generation_rule_dto_set:
- generation_rule_create_request_dto
- generation_rule_update_request_dto
- generation_rule_summary_dto
- generation_rule_detail_dto

generation_execution_dto_set:
- auto_generate_request_dto
- generation_result_dto
- generation_warning_dto
- generation_summary_dto

requested_day_off_dto_set:
- requested_day_off_submit_request_dto
- requested_day_off_summary_dto
- requested_day_off_review_request_dto

scheduled_generation_dto_set:
- auto_generation_schedule_create_request_dto
- auto_generation_schedule_update_request_dto
- auto_generation_schedule_summary_dto
- auto_generation_execution_summary_dto

difference_confirmation_dto_set:
- publication_difference_summary_dto
- change_confirmation_request_dto
- change_confirmation_status_dto

headquarters_dto_set:
- site_dashboard_summary_dto
- site_analytics_summary_dto

# ============================================================
# 5. SERVICE STARTER MAPPING
# ============================================================

generation_services:
- generation_rule_service
- auto_generation_service
- generation_result_service

requested_day_off_services:
- requested_day_off_service
- requested_day_off_review_service

scheduled_generation_services:
- auto_generation_schedule_service
- auto_generation_execution_service
- timer_dispatch_service

difference_confirmation_services:
- publication_difference_service
- change_confirmation_service

headquarters_services:
- site_dashboard_service
- site_analytics_service

service_rules:
- generation service remains draft-only
- timer_dispatch_service must never publish
- requested day-off service is planning input, not publication mutation
- difference service compares publication versions, not raw draft rows
- headquarters services remain lightweight summary services

# ============================================================
# 6. REPOSITORY STARTER MAPPING
# ============================================================

generation_repositories:
- generation_rule_repository
- generation_result_repository
- generation_warning_repository

requested_day_off_repositories:
- requested_day_off_repository

scheduled_generation_repositories:
- auto_generation_schedule_repository
- auto_generation_execution_repository

difference_confirmation_repositories:
- publication_difference_repository
- change_confirmation_repository

headquarters_repositories:
- site_dashboard_repository
- site_analytics_repository

repository_rules:
- generation repositories must not mutate publication tables directly
- scheduled generation repositories track schedule and execution separately
- difference repository uses publication basis only
- dashboard repository returns summary-safe shapes only

# ============================================================
# 7. UI SCREEN RESPONSIBILITY STARTER
# ============================================================

generation_rule_list:
- list rules
- open create/edit
- manager-side only

generation_rule_edit:
- edit condition_json inputs
- validate business_days / slot_requirements / person_constraints

auto_generation_result_review:
- show generated draft summary
- show warnings and shortages
- open generated draft for human correction

generation_warning_list:
- show warnings with severity and target slot/date context

requested_day_off_submit:
- staff submits date/note
- shows current request status

requested_day_off_review:
- manager reviews submitted requests
- approve/reject/cancel as policy allows

auto_generation_schedule_list:
- list scheduled generation definitions
- show active/inactive
- show next execution conceptually

auto_generation_schedule_edit:
- support weekly / monthly_fixed_day / monthly_last_day
- support execution time
- support next_week / next_month

auto_generation_schedule_execution_history:
- show scheduled/run-now results
- show success/failed/skipped

publication_difference_detail:
- show before/after changes after republish

change_confirmation_status:
- show pending/confirmed counts by affected users

headquarters_site_dashboard:
- show site cards and key risk counts

multi_site_analytics:
- show lightweight site summaries only

# ============================================================
# 8. READ-ONLY / SUBSCRIPTION INSERTION POINTS
# ============================================================

backend_insertion_points:
- before generation rule create/update
- before auto-generate
- before requested day-off review mutation
- before auto-generation schedule create/update/run-now
- before confirmation mutation where needed by business rule

ui_insertion_points:
- disable generation management in inactive
- disable timer schedule create/update/run-now in inactive
- keep result/history viewing usable where allowed
- requested day-off staff submission may follow active/trial/grace only unless later relaxed

important_rule:
Inactive blocks generation and timer mutation.
Timer execution must skip in inactive state.

# ============================================================
# 9. VALIDATION PRIORITIES
# ============================================================

generation_rule_validation:
- rule_name not empty
- condition_json object
- slot_requirements at least 1
- times valid
- weekdays valid
- counts positive

auto_generation_validation:
- generation_rule exists
- period range valid
- overwrite_policy valid
- scope compatible with rule
- generation warnings persist correctly

requested_day_off_validation:
- requested_date valid
- duplicate/conflicting request policy respected
- review action status valid

scheduled_generation_validation:
- schedule_type valid
- execution_time valid
- weekly_day_of_week valid when weekly
- monthly_day valid when monthly_fixed_day
- monthly_last_day flag coherent when monthly_last_day
- target_period_mode valid
- generation_rule exists and active

difference_confirmation_validation:
- publication exists
- difference rows exist when expected
- affected viewer only confirms own visible change set

headquarters_validation:
- site summaries scoped safely
- heavyweight BI behavior avoided

# ============================================================
# 10. ERROR CODE STARTER SET
# ============================================================

generation_errors:
- invalid_generation_rule
- invalid_condition_json
- empty_slot_requirements
- invalid_weekday
- invalid_slot_time
- generation_rule_manage_denied
- generation_rule_not_found
- auto_generate_denied
- draft_generation_failed

requested_day_off_errors:
- invalid_requested_date
- duplicate_requested_day_off
- requested_day_off_not_found
- requested_day_off_review_denied
- invalid_requested_day_off_status

scheduled_generation_errors:
- invalid_schedule_type
- invalid_execution_time
- invalid_monthly_day
- invalid_target_period_mode
- auto_generation_schedule_not_found
- auto_generation_schedule_manage_denied
- SUBSCRIPTION_INACTIVE_READ_ONLY
- AUTO_GENERATION_TARGET_ALREADY_EXISTS
- GENERATION_RULE_INACTIVE

difference_confirmation_errors:
- publication_difference_not_found
- change_confirmation_denied
- invalid_confirmation_state

headquarters_errors:
- site_dashboard_access_denied
- site_analytics_access_denied

# ============================================================
# 11. PHASE 3-4 TEST VIEWPOINTS
# ============================================================

generation_tests:
- generation rule create/update succeeds when allowed
- generation blocked in inactive
- auto-generate produces editable draft
- warnings/shortages visible
- rule JSON validation catches bad structures

requested_day_off_tests:
- staff can submit
- manager can review
- invalid status changes rejected

scheduled_generation_tests:
- weekly schedule saved correctly
- monthly_fixed_day schedule saved correctly
- monthly_last_day schedule saved correctly
- run-now works
- inactive skips execution
- timer never publishes automatically

difference_confirmation_tests:
- republish differences can be read
- affected viewer can confirm
- manager can see pending/confirmed summary

headquarters_tests:
- site dashboard returns lightweight summary data
- site analytics remains lightweight and scoped

# ============================================================
# 12. PHASE 3-4 DONE CONDITIONS
# ============================================================

phase3_4_done_conditions:
- generation rule basics work
- auto-generate works
- generation result/warning review works
- requested day-off basics work
- scheduled auto-generation basics work
- difference / confirmation basis works
- headquarters lightweight summary basis works
- inactive safely blocks timer/generation mutation
- timer remains draft-only

# ============================================================
# 13. IMMEDIATE NEXT AFTER PHASE 3-4
# ============================================================

next_after_phase3_4:
- PDF export implementation batch
- notification implementation batch
- ERP export implementation batch
- optional requested day-off to generation deeper linkage
- optional headquarters polish
- future exchange/support design freeze or defer decision

# ============================================================
# 14. CONCLUSION
# ============================================================

Phase 3-4 should deliver the next competitive and operationally strong slice:
- rule-based draft generation
- timer-based draft preparation
- requested day-off input
- republish difference / confirmation visibility
- lightweight multi-site management visibility

