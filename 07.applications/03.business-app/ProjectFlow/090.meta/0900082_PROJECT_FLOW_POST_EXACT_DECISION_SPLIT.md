# ============================================================
# PROJECT FLOW POST EXACT DECISION SPLIT
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Splits remaining decisions by when they should be made.

decision_timing_split:

can_be_decided_in_implementation_planning_phase:
- final Android module naming
- DI framework choice
- offline/cache strategy
- background job scheduling style

must_be_decided_with_db_owner_or_db_phase:
- schema final confirmation
- migration hardening order
- RLS design execution
- final check constraint hardening order

should_be_deferred_to_later_sophistication_phase:
- holiday-calendar sophistication
- later language expansion
- advanced urgency/scale tuning
- broader common-component promotion
