# ============================================================
# SHIFT MANAGER ADDITIONAL SCREEN INVENTORY
# ============================================================

status: design-extension
type: additional-screen-inventory
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. ADDED SCREENS
# ============================================================

headquarters:
- headquarters_site_dashboard
- site_status_detail
- multi_site_analytics

safety_and_confirmation:
- shortage_difference_dashboard
- publication_difference_detail
- change_confirmation_status

requested_day_off:
- requested_day_off_submit
- requested_day_off_review
- requested_day_off_history

scheduled_generation:
- auto_generation_schedule_list
- auto_generation_schedule_create
- auto_generation_schedule_detail
- auto_generation_schedule_execution_history

future_candidates:
- shift_exchange_request_list
- shift_exchange_request_detail
- support_request_list
- support_request_detail

