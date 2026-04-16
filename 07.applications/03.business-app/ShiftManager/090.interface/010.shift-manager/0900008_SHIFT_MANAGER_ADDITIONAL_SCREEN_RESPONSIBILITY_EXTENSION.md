# ============================================================
# SHIFT MANAGER ADDITIONAL SCREEN RESPONSIBILITY EXTENSION
# ============================================================

status: design-extension
type: additional-screen-responsibility-extension
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the responsibility boundaries
for additional feature screens.

# ============================================================
# 2. REQUESTED DAY-OFF
# ============================================================

requested_day_off_submit:
- input requested_date
- input request_note
- submit self request
- show submission result

requested_day_off_history:
- show own requests
- show submitted/approved/rejected/cancelled

requested_day_off_review:
- show pending requests in managed scope
- approve/reject/cancel review action
- show review history context

# ============================================================
# 3. SCHEDULED AUTO GENERATION
# ============================================================

auto_generation_schedule_list:
- show defined timer rules
- show active/inactive
- open create/detail
- run-now shortcut where allowed

auto_generation_schedule_create:
- define weekly/monthly schedule
- define execution time
- define target period mode
- connect generation rule

auto_generation_schedule_detail:
- edit timer rule
- enable/disable
- show basic next execution meaning

auto_generation_schedule_execution_history:
- show success/failed/skipped
- show warning/unassigned counts
- show generated schedule linkage

# ============================================================
# 4. DIFFERENCE / CONFIRMATION
# ============================================================

shortage_difference_dashboard:
- show shortage counts
- show warning counts
- show unconfirmed change counts
- route to detail

publication_difference_detail:
- show before/after summary
- show affected person scope
- show difference type grouping

change_confirmation_status:
- show pending/confirmed counts
- show who still needs confirmation where allowed
- allow self confirmation where allowed

# ============================================================
# 5. HEADQUARTERS
# ============================================================

headquarters_site_dashboard:
- show per-site status cards
- show subscription status
- show shortage/unpublished/warning summary

site_status_detail:
- show one site's operational status
- show unresolved attention points

multi_site_analytics:
- show lightweight summary only
- show period filters
- avoid heavy BI behavior

