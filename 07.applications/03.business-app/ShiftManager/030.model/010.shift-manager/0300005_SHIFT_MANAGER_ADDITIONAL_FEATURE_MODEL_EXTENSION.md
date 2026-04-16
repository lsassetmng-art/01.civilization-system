# ============================================================
# SHIFT MANAGER ADDITIONAL FEATURE MODEL EXTENSION
# ============================================================

status: design-extension
type: additional-feature-model-extension
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document adds the model candidates
for newly adopted competitive features.

# ============================================================
# 2. NEW TABLE CANDIDATES
# ============================================================

new_table_candidates:
- shift_site_dashboard_snapshot
- shift_publication_difference
- shift_change_confirmation
- shift_requested_day_off
- shift_site_analytics_snapshot
- shift_support_request
- shift_exchange_request
- shift_auto_generation_schedule
- shift_auto_generation_execution

# ============================================================
# 3. HEADQUARTERS / MULTI-SITE
# ============================================================

shift_site_dashboard_snapshot:
purpose:
- cache or summarize per-site operational indicators

suggested_fields:
- site_dashboard_snapshot_id
- company_id
- site_id
- snapshot_at
- subscription_status
- unpublished_count
- shortage_count
- warning_count
- unconfirmed_change_count
- erp_failed_count

shift_site_analytics_snapshot:
purpose:
- lightweight analytics by site

suggested_fields:
- site_analytics_snapshot_id
- company_id
- site_id
- period_start_date
- period_end_date
- same_day_change_count
- pdf_export_count
- erp_failure_count
- requested_day_off_pending_count
- change_confirmation_pending_count
- created_at

# ============================================================
# 4. DIFFERENCE / CONFIRMATION
# ============================================================

shift_publication_difference:
purpose:
- store meaningful republish differences

suggested_fields:
- publication_difference_id
- old_publication_id
- new_publication_id
- affected_person_id
- difference_type
- difference_summary
- before_value_json
- after_value_json
- created_at

difference_type_enum:
- time_changed
- person_changed
- role_changed
- office_changed
- assignment_added
- assignment_removed

shift_change_confirmation:
purpose:
- allow affected viewers to mark that they confirmed a change

suggested_fields:
- change_confirmation_id
- publication_difference_id
- publication_id
- target_person_id
- confirmation_status
- confirmed_at
- created_at

confirmation_status_enum:
- pending
- confirmed
- ignored

# ============================================================
# 5. REQUESTED DAY-OFF
# ============================================================

shift_requested_day_off:
purpose:
- collect requested day-off inputs before planning/generation

suggested_fields:
- requested_day_off_id
- company_id
- site_id
- person_id
- requested_date
- requested_status
- request_note
- requested_at
- reviewed_by_person_id
- reviewed_at

requested_status_enum:
- submitted
- approved
- rejected
- cancelled

# ============================================================
# 6. FUTURE CANDIDATES
# ============================================================

shift_support_request:
purpose:
- future support request between sites/teams

shift_exchange_request:
purpose:
- future shift exchange request

future_status_note:
These are future candidates and do not block current implementation entry.

# ============================================================
# 7. SCHEDULED AUTO GENERATION
# ============================================================

shift_auto_generation_schedule:
purpose:
- define timer-based draft generation reservation

suggested_fields:
- auto_generation_schedule_id
- company_id
- site_license_id
- target_scope_type
- target_scope_id
- generation_rule_id
- schedule_type
- execution_timezone
- weekly_day_of_week
- monthly_day
- monthly_use_last_day
- execution_time
- target_period_mode
- active_flag
- created_by_person_id
- updated_by_person_id
- created_at
- updated_at

schedule_type_enum:
- weekly
- monthly_fixed_day
- monthly_last_day
- once

target_period_mode_enum:
- next_week
- next_month

weekly_day_of_week_enum:
- mon
- tue
- wed
- thu
- fri
- sat
- sun

shift_auto_generation_execution:
purpose:
- record actual timer execution result

suggested_fields:
- auto_generation_execution_id
- auto_generation_schedule_id
- executed_at
- execution_status
- generated_schedule_id
- generation_result_id
- warning_count
- unassigned_count
- error_code
- error_message
- created_at

execution_status_enum:
- scheduled
- running
- success
- failed
- skipped

important_rule:
If subscription state is inactive,
timer execution must be skipped rather than performed.

# ============================================================
# 8. CONCLUSION
# ============================================================

These model extensions support:
- multi-site operation
- safer republish handling
- day-off input
- lightweight analytics
- future exchange/support features
- timer-based automatic draft generation

