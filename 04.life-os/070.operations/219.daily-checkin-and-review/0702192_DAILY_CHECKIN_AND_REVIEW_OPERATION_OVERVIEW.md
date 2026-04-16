# ============================================================
# DAILY CHECKIN AND REVIEW OPERATION OVERVIEW
# ============================================================

status: canonical-draft
system: life-os
layer: operations
domain: daily-checkin-and-review
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling for daily check-in and weekly review.

operations:
- daily check-in prompt timing
- missed check-in fallback behavior
- summary generation timing
- weekly review generation timing
- review entry reminder policy

rules:
- no excessive nagging
- summary must tolerate partial data
- missed check-in is not treated as failure
