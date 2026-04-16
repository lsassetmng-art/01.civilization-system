# ============================================================
# SHIFT MANAGER ADDITIONAL FEATURE VALIDATION MATRIX EXTENSION
# ============================================================

status: implementation-facing-validation-candidate
type: additional-feature-validation-matrix-extension
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. REQUESTED DAY-OFF
# ============================================================

validation:
- requested_date must be valid date
- duplicate conflicting request policy must be checked
- staff may submit only for self
- manager review status must be valid enum

major_errors:
- invalid_requested_date
- duplicate_requested_day_off
- requested_day_off_not_found
- requested_day_off_review_denied
- invalid_requested_day_off_status

# ============================================================
# 2. SCHEDULED AUTO GENERATION
# ============================================================

validation:
- generation_rule_id must exist
- schedule_type must be valid enum
- execution_time must be valid time
- weekly_day_of_week required when weekly
- monthly_day required and 1..31 when monthly_fixed_day
- monthly_use_last_day must be true when monthly_last_day
- target_period_mode must be valid
- inactive subscription must block create/update/run-now
- run-now overwrite_policy must be valid enum

major_errors:
- generation_rule_not_found
- invalid_schedule_type
- invalid_execution_time
- invalid_weekly_day
- invalid_monthly_day
- invalid_target_period_mode
- SUBSCRIPTION_INACTIVE_READ_ONLY
- AUTO_GENERATION_TARGET_ALREADY_EXISTS
- GENERATION_RULE_INACTIVE

# ============================================================
# 3. PUBLICATION DIFFERENCE / CHANGE CONFIRMATION
# ============================================================

validation:
- publication must exist
- caller must be permitted to view publication
- confirmation may only target affected/visible change rows
- confirmation_status must be valid enum

major_errors:
- publication_not_found
- publication_access_denied
- publication_difference_not_found
- change_confirmation_denied
- invalid_confirmation_state

# ============================================================
# 4. HEADQUARTERS DASHBOARD / ANALYTICS
# ============================================================

validation:
- caller must have headquarters or higher permitted role
- only company-safe site summaries may be returned
- analytics remains lightweight summary only

major_errors:
- site_dashboard_access_denied
- site_analytics_access_denied

