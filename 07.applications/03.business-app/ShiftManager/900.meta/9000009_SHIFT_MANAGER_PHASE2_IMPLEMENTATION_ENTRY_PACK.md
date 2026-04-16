# ============================================================
# SHIFT MANAGER PHASE 2 IMPLEMENTATION ENTRY PACK
# ============================================================

status: implementation-entry
type: phase2-implementation-entry-pack
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This pack consolidates the implementation-entry details
for Phase 2 of ShiftManager.

It fixes in one place:
- backend endpoint implementation order
- SQL apply/review order
- DTO / Service / Repository starter mapping
- publication / visibility responsibility
- test viewpoints
- phase completion conditions

# ============================================================
# 1. PHASE 2 TARGET
# ============================================================

phase_2_target:
Deliver the first safe publication-side slice with:
- validate-for-publication
- publish
- republish
- share rule basics
- share preview
- visible publication viewing
- my shifts today/week

phase_2_prerequisite:
- Phase 1 context/bootstrap/subscription gate complete
- draft schedule and assignment core usable

phase_2_excludes:
- generation
- PDF export
- ERP export
- requested day-off
- change confirmation
- headquarters dashboard
- scheduled auto generation

# ============================================================
# 2. BACKEND ENDPOINT IMPLEMENTATION ORDER
# ============================================================

step_1_validation_and_publish:
- POST /api/shift-manager/v1/schedules/{schedule_id}/validate-for-publication
- POST /api/shift-manager/v1/schedules/{schedule_id}/publish
- POST /api/shift-manager/v1/schedules/{schedule_id}/republish

required_outcome:
- draft can be validated
- publication snapshot can be created
- republish can supersede previous active publication
- inactive blocks publish-side mutation

step_2_share_rule_basics:
- POST /api/shift-manager/v1/share-rules
- GET /api/shift-manager/v1/share-rules
- PATCH /api/shift-manager/v1/share-rules/{share_rule_id}

required_outcome:
- manager can define/update share rule basics
- share rule scope stays explicit
- inactive blocks share management

step_3_share_preview_and_view_scope:
- GET /api/shift-manager/v1/publications/{publication_id}/share-preview
- implement/reuse view_scope evaluation basis
- support publication visibility read path

required_outcome:
- publish target visibility can be previewed
- visible viewers are explainable
- publication viewing uses evaluated visibility basis

step_4_viewing_endpoints:
- GET /api/shift-manager/v1/me/shifts/today
- GET /api/shift-manager/v1/me/shifts/week
- GET /api/shift-manager/v1/publication-assignments/{publication_assignment_id}

required_outcome:
- users can see self/visible publication results only
- inactive still allows viewing where permitted

# ============================================================
# 3. SQL APPLY / REVIEW ORDER
# ============================================================

phase2_sql_apply_order:
1. 011_shift_manager_generation_tables.sql
2. 012_shift_manager_history_audit_tables.sql
3. 104_shift_manager_rls_share.sql
4. review existing 103_shift_manager_rls_publication.sql
5. review view_scope-related policies and helper usage

phase2_sql_review_points:
- publication tables support publish/republish correctly
- publication version uniqueness is enforced
- share_rule and share_rule_target shape is sufficient
- view_scope visibility basis is explicit and safe
- publish/share history tables support minimum auditability
- inactive state is handled at app/service gate, not by weakening RLS

phase2_sql_skip_for_now:
- 013 pdf export tables
- 105 notification
- 106 erp
- 107 generation
- 108 already available but not phase2-specific work
- future additional feature tables

# ============================================================
# 4. DTO STARTER MAPPING
# ============================================================

publication_dto_set:
- validate_for_publication_response_dto
- publish_request_dto
- publish_response_dto
- republish_request_dto
- republish_response_dto
- publication_summary_dto

share_dto_set:
- share_rule_create_request_dto
- share_rule_update_request_dto
- share_rule_summary_dto
- share_preview_response_dto
- view_scope_preview_dto

viewing_dto_set:
- my_shift_today_response_dto
- my_shift_week_response_dto
- publication_assignment_detail_dto

common_dto_extensions:
- validation_warning_summary_dto
- publish_target_summary_dto

# ============================================================
# 5. SERVICE STARTER MAPPING
# ============================================================

publication_services:
- publication_validation_service
- publication_service
- republish_service

share_services:
- share_rule_service
- share_preview_service
- view_scope_service

view_services:
- my_shift_view_service
- publication_assignment_view_service

service_rules:
- validation service must remain draft-side input aware
- publication service must create publication snapshot only from draft state
- republish service must supersede active publication safely
- share preview and actual visibility must use the same evaluation logic
- viewing services must never bypass visibility rules

# ============================================================
# 6. REPOSITORY STARTER MAPPING
# ============================================================

publication_repositories:
- publication_repository
- publication_assignment_repository
- publish_history_repository

share_repositories:
- share_rule_repository
- share_rule_target_repository
- view_scope_repository
- share_history_repository

view_repositories:
- publication_view_repository

repository_rules:
- draft repositories remain separate from publication repositories
- publication repository never mutates draft assignments directly
- view repositories return only visibility-safe shapes

# ============================================================
# 7. UI SCREEN RESPONSIBILITY STARTER
# ============================================================

publish_confirmation:
- show draft summary
- show shortage/warning summary
- allow publish only when feature gate and role allow

republish_confirmation:
- show current active publication summary
- show intended update path
- allow republish only when feature gate and role allow

share_rule_list:
- list share rules
- open create/edit only when allowed

share_scope_setting:
- create/update share scope
- show explicit targets clearly
- block mutation when inactive

publish_target_confirmation:
- show who will likely see the publication
- show counts/breakdown before publish

my_shift:
- show visible self/publication data only
- remain usable in inactive

today_shift:
- show today's visible assignments

week_view:
- show week's visible assignments
- phase2 publication-side viewing, not only phase1 draft editing

# ============================================================
# 8. READ-ONLY INSERTION POINTS
# ============================================================

backend_insertion_points:
- before validate-for-publication
- before publish
- before republish
- before create/update share rule

ui_insertion_points:
- disable publish/republish buttons when inactive
- disable share rule create/edit controls when inactive
- keep my shift / today / week viewing usable

important_rule:
Inactive blocks publish/share mutation,
but must not remove already allowed publication viewing.

# ============================================================
# 9. VALIDATION PRIORITIES
# ============================================================

publish_validation:
- schedule exists
- schedule is draft
- caller has publish authority
- publish readiness summary can be calculated
- publication version can be issued

republish_validation:
- schedule exists
- active publication exists
- caller has republish authority
- new snapshot can be created
- supersede can complete safely

share_validation:
- rule_name not empty
- target list not empty
- scope_type valid
- visibility_level valid
- target_type valid
- target_id valid in company context

viewing_validation:
- visible publication only
- self/explicitly visible scope only
- no uncontrolled other-person access

# ============================================================
# 10. ERROR CODE STARTER SET
# ============================================================

publication_errors:
- schedule_not_found
- schedule_not_draft
- validation_execution_denied
- validation_not_ready
- publish_denied
- publication_snapshot_failed
- publication_version_conflict
- republish_denied
- active_publication_not_found
- supersede_failed

share_errors:
- share_rule_invalid
- empty_targets
- share_manage_denied
- invalid_target_type
- invalid_target_id
- cross_company_target_denied
- visibility_evaluation_failed

viewing_errors:
- publication_not_found
- publication_access_denied
- publication_assignment_not_found
- person_visibility_denied

subscription_errors:
- SUBSCRIPTION_INACTIVE_READ_ONLY
- FEATURE_GATE_BLOCKED

# ============================================================
# 11. PHASE 2 TEST VIEWPOINTS
# ============================================================

publish_tests:
- validate succeeds for valid draft
- publish succeeds for valid draft in active/trial/grace
- publish blocked in inactive
- republish supersedes old active publication
- publish output is publication-based snapshot

share_tests:
- create/update share rule succeeds when allowed
- create/update blocked in inactive
- invalid targets rejected
- share preview returns understandable viewer scope

viewing_tests:
- my shifts today/week returns only visible publication data
- self visible data remains viewable in inactive
- unauthorized other-person visibility is denied

ui_tests:
- publish/republish controls disabled in inactive
- share controls disabled in inactive
- publication viewing screens remain usable where allowed

# ============================================================
# 12. PHASE 2 DONE CONDITIONS
# ============================================================

phase2_done_conditions:
- validate-for-publication works
- publish works
- republish works
- share rule basics work
- share preview works
- my shifts today/week works on publication basis
- inactive blocks publish/share mutation consistently
- visibility remains explicit and safe

# ============================================================
# 13. IMMEDIATE NEXT AFTER PHASE 2
# ============================================================

next_after_phase2:
- generation rule and auto-generate
- generation result/warning viewing
- PDF export
- notification flow
- ERP export

# ============================================================
# 14. CONCLUSION
# ============================================================

Phase 2 should deliver the first safe publication-side slice of ShiftManager:
- publishable
- shareable
- visibility-safe
- still protected by subscription read-only rules

