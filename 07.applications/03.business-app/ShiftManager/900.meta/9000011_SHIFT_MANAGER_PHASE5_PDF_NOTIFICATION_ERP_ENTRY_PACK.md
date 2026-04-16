# ============================================================
# SHIFT MANAGER PHASE 5 PDF NOTIFICATION ERP ENTRY PACK
# ============================================================

status: implementation-entry
type: phase5-pdf-notification-erp-entry-pack
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This pack consolidates the implementation-entry details
for the PDF / notification / ERP extension phase.

It fixes in one place:
- backend implementation order
- SQL apply/review order
- DTO / Service / Repository starter mapping
- PDF / notification / ERP responsibility boundaries
- test viewpoints
- phase completion conditions

# ============================================================
# 1. PHASE TARGET
# ============================================================

phase_target:
Deliver the first practical operation-complete extension with:
- PDF export
- notification flow
- ERP export / retry
- export/linkage visibility
- publication-oriented operational completion

phase_prerequisite:
- Phase 1 draft-side core complete
- Phase 2 publication / visibility complete
- Phase 3-4 generation and scheduled generation foundations available or intentionally deferred

phase_excludes:
- advanced board layout tuning
- advanced notification channel expansion
- ERP transport optimization
- exchange/support implementation
- heavyweight analytics

# ============================================================
# 2. BACKEND IMPLEMENTATION ORDER
# ============================================================

step_1_pdf_export:
- POST /api/shift-manager/v1/schedules/{schedule_id}/export-pdf
- POST /api/shift-manager/v1/publications/{publication_id}/export-pdf
- GET /api/shift-manager/v1/pdf-export-history

required_outcome:
- draft_pdf works for internal review
- publication_pdf works for formal printable distribution
- export history persists
- inactive blocks new PDF export
- publication basis remains primary for formal distribution

step_2_notification_basics:
- GET /api/shift-manager/v1/me/notifications
- POST /api/shift-manager/v1/me/notifications/{notification_id}/read
- implement publish notification generation
- implement republish notification generation
- implement same_day notification scheduling basis
- implement urgent_change notification basis

required_outcome:
- users can view notifications
- read state works
- publish/republish creates notification rows
- same_day basis exists
- failed delivery can remain retryable later

step_3_erp_export_basics:
- POST /api/shift-manager/v1/publications/{publication_id}/export-erp
- GET /api/shift-manager/v1/publications/{publication_id}/erp-linkage
- POST /api/shift-manager/v1/publications/{publication_id}/retry-export-erp

required_outcome:
- ERP export is publication-based
- linkage state persists
- retry path exists
- inactive blocks ERP export mutation
- export status is visible to allowed roles

step_4_operational_finish:
- normalize PDF/notification/ERP error envelopes
- align export history / linkage visibility with role rules
- confirm read-only consistency
- confirm publication-only export discipline

# ============================================================
# 3. SQL APPLY / REVIEW ORDER
# ============================================================

phase_sql_apply_order:
1. 013_shift_manager_pdf_export_tables.sql
2. review shift_notification from 010 core tables
3. review erp_linkage_state from 010 core tables
4. 105_shift_manager_rls_notification.sql
5. 106_shift_manager_rls_erp.sql
6. review 103_shift_manager_rls_publication.sql for publication-based export/read
7. add later exact pack if needed for delivery queue helpers or PDF history extensions

phase_sql_review_points:
- PDF export history shape is sufficient
- export_type / layout_type enums match design
- notification table covers publish/republish/same_day/urgent_change
- ERP linkage state covers pending/exporting/success/failed
- retry_count and last_error fields are sufficient
- inactive mutation blocking stays in service/app gate, not by weakening RLS

phase_sql_skip_for_now:
- advanced channel-specific tables
- advanced ERP transport detail tables
- advanced PDF rendering helper tables

# ============================================================
# 4. DTO STARTER MAPPING
# ============================================================

pdf_dto_set:
- pdf_export_request_dto
- pdf_export_result_dto
- pdf_export_history_summary_dto

notification_dto_set:
- notification_summary_dto
- notification_read_request_dto
- notification_delivery_summary_dto

erp_dto_set:
- erp_export_request_dto
- erp_linkage_state_dto
- erp_retry_request_dto
- erp_export_result_dto

common_dto_extensions:
- export_status_summary_dto
- delivery_error_summary_dto
- linkage_error_summary_dto

# ============================================================
# 5. SERVICE STARTER MAPPING
# ============================================================

pdf_services:
- pdf_export_service
- pdf_render_service
- pdf_export_history_service

notification_services:
- notification_service
- publish_notification_service
- same_day_notification_service
- urgent_change_notification_service

erp_services:
- erp_export_service
- erp_linkage_service
- erp_retry_service

service_rules:
- pdf_export_service must distinguish draft basis and publication basis correctly
- publication_pdf must be the primary formal printable output
- notification generation must happen from published state only
- same_day notification scheduling must not imply publish
- erp_export_service must never use raw draft data
- retry must preserve publication-based export identity

# ============================================================
# 6. REPOSITORY STARTER MAPPING
# ============================================================

pdf_repositories:
- pdf_export_history_repository
- publication_export_repository
- draft_export_repository

notification_repositories:
- notification_repository

erp_repositories:
- erp_linkage_repository
- publication_export_repository

repository_rules:
- PDF export repositories must not confuse draft and publication bases
- notification repository must be target-person centered
- ERP repository must remain publication-centered
- export history and linkage state must be queryable by allowed managers/operators

# ============================================================
# 7. UI SCREEN RESPONSIBILITY STARTER
# ============================================================

pdf_export_setting:
- select export_type
- select layout_type
- toggle include_memo if allowed
- block export when inactive

pdf_export_preview:
- preview printable structure when supported
- distinguish DRAFT and publication output clearly

pdf_export_history:
- show generated files/history summary
- show type/layout/generated_at

notification_center:
- list notifications
- mark read
- show urgent vs normal distinction
- remain usable in inactive

erp_linkage_status:
- show export status
- show last error
- show retry if allowed

erp_export_confirmation:
- confirm export intent
- show publication context
- block export when inactive

error_detail:
- show failure reason for export/delivery issues

# ============================================================
# 8. READ-ONLY / SUBSCRIPTION INSERTION POINTS
# ============================================================

backend_insertion_points:
- before POST schedule/export-pdf
- before POST publication/export-pdf
- before POST publication/export-erp
- before POST publication/retry-export-erp

ui_insertion_points:
- disable PDF export controls when inactive
- disable ERP export/retry controls when inactive
- keep notification center readable in inactive
- keep PDF history / linkage status readable where allowed

important_rule:
Inactive blocks new export mutation,
but must not remove already allowed viewing/history visibility.

# ============================================================
# 9. VALIDATION PRIORITIES
# ============================================================

pdf_validation:
- target exists
- export_type valid
- layout_type valid
- target/export_type compatibility valid
- publication basis used for formal distribution
- export history save succeeds

notification_validation:
- target_person_id matches visibility/recipient rules
- notification_type valid
- publish/republish notifications come from publication events only
- read state update allowed only for self/allowed manager exception

erp_validation:
- publication exists
- publication active
- export_mode valid
- duplicate active export request prevented
- publication-based ERP payload build succeeds
- retry allowed only where linkage state supports it

# ============================================================
# 10. ERROR CODE STARTER SET
# ============================================================

pdf_errors:
- pdf_target_not_found
- invalid_export_type
- invalid_layout_type
- export_target_mismatch
- pdf_export_denied
- pdf_render_failed
- pdf_history_save_failed
- SUBSCRIPTION_INACTIVE_READ_ONLY

notification_errors:
- notification_not_found
- notification_access_denied
- notification_update_denied
- notification_delivery_failed

erp_errors:
- publication_not_found
- publication_not_active
- erp_export_denied
- invalid_export_mode
- duplicate_export_request
- erp_payload_build_failed
- linkage_state_not_found
- erp_retry_denied
- SUBSCRIPTION_INACTIVE_READ_ONLY

# ============================================================
# 11. PHASE TEST VIEWPOINTS
# ============================================================

pdf_tests:
- draft_pdf succeeds for valid draft in active/trial/grace
- publication_pdf succeeds for valid publication in active/trial/grace
- export blocked in inactive
- history row saved
- DRAFT vs publication distinction visible

notification_tests:
- publish creates notification rows
- republish creates notification rows
- same_day basis works
- read update works
- inactive still allows notification viewing

erp_tests:
- export succeeds from active publication only
- export blocked in inactive
- linkage state view works for allowed roles
- retry works only in allowed failed states

ui_tests:
- PDF export controls disabled in inactive
- ERP export controls disabled in inactive
- notification center still works in inactive
- export history / linkage status screens remain readable where allowed

# ============================================================
# 12. PHASE DONE CONDITIONS
# ============================================================

phase_done_conditions:
- PDF export works in first practical form
- notification center works
- publish/republish notification generation works
- ERP export/retry works in first practical form
- export/linkage visibility works
- inactive blocks new export mutation consistently
- publication-only export discipline is preserved

# ============================================================
# 13. IMMEDIATE NEXT AFTER THIS PHASE
# ============================================================

next_after_phase:
- board_a3 / advanced layout tuning
- richer channel integration
- ERP transport optimization
- requested day-off deeper generation linkage
- headquarters polish
- future exchange/support decision

# ============================================================
# 14. CONCLUSION
# ============================================================

This phase should make ShiftManager operationally complete enough to feel real:
- printable
- notifyable
- exportable
- still safe under publication/read-only rules

