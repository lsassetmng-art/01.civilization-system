# ============================================================
# SHIFT MANAGER ADDITIONAL SCREEN NAVIGATION EXTENSION
# ============================================================

status: design-extension
type: additional-screen-navigation-extension
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the screen navigation direction
for newly added competitive features.

# ============================================================
# 2. REQUESTED DAY-OFF FLOW
# ============================================================

flow:
my_shift / home_dashboard
-> requested_day_off_submit
-> requested_day_off_history

manager_flow:
home_dashboard
-> requested_day_off_review
-> requested_day_off_history

# ============================================================
# 3. SCHEDULED AUTO GENERATION FLOW
# ============================================================

flow:
home_dashboard
-> auto_generation_schedule_list
-> auto_generation_schedule_create
-> auto_generation_schedule_detail
-> auto_generation_schedule_execution_history

optional_shortcut:
generation_rule_list
-> auto_generation_schedule_create

# ============================================================
# 4. DIFFERENCE / CONFIRMATION FLOW
# ============================================================

flow:
notification_center
-> publication_difference_detail
-> change_confirmation_status

manager_flow:
home_dashboard
-> shortage_difference_dashboard
-> publication_difference_detail
-> change_confirmation_status

# ============================================================
# 5. HEADQUARTERS FLOW
# ============================================================

flow:
headquarters_site_dashboard
-> site_status_detail
-> multi_site_analytics

# ============================================================
# 6. RULE
# ============================================================

rule:
Additional feature navigation should remain shallow,
operational, and easy to reach from dashboard/notification context.

