# ============================================================
# SHIFT MANAGER ADDITIONAL SCREEN INPUT ITEM DEFINITION EXTENSION
# ============================================================

status: design-extension
type: additional-screen-input-item-definition-extension
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the key input items
for newly added screens.

# ============================================================
# 2. REQUESTED DAY-OFF SUBMIT
# ============================================================

screen:
- requested_day_off_submit

input_items:
- requested_date
- request_note

rules:
- requested_date required
- request_note optional

# ============================================================
# 3. REQUESTED DAY-OFF REVIEW
# ============================================================

screen:
- requested_day_off_review

input_items:
- requested_status
- review_note

rules:
- requested_status required
- review_note optional

# ============================================================
# 4. AUTO GENERATION SCHEDULE CREATE / EDIT
# ============================================================

screen:
- auto_generation_schedule_create
- auto_generation_schedule_detail

input_items:
- rule_name
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

rules:
- rule_name required
- target_scope_type required
- target_scope_id required
- generation_rule_id required
- schedule_type required
- execution_timezone required
- execution_time required
- target_period_mode required
- weekly_day_of_week required when schedule_type=weekly
- monthly_day required when schedule_type=monthly_fixed_day
- monthly_use_last_day=true when schedule_type=monthly_last_day

# ============================================================
# 5. CHANGE CONFIRMATION
# ============================================================

screen:
- change_confirmation_status

input_items:
- publication_difference_ids
- confirmation_status

rules:
- publication_difference_ids required
- confirmation_status required

# ============================================================
# 6. HEADQUARTERS DASHBOARD / ANALYTICS
# ============================================================

screen:
- headquarters_site_dashboard
- multi_site_analytics

filter_items:
- site_id
- period_start_date
- period_end_date
- subscription_status

rules:
- all filters optional in first version
- analytics stays lightweight summary only

# ============================================================
# 7. CONCLUSION
# ============================================================

These input definitions should be added
to the practical screen implementation baseline
for additional competitive features.

