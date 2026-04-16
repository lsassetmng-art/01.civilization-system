# ============================================================
# PROJECT FLOW DB OWNER REVIEW POST RESULT TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Template for deciding what to do next
after DB-owner review result is known.

post_result_template_fields:
- review_result: pass_or_partial_or_hold
- confirmed_areas
- still_blocked_areas
- immediate_next_actions
- deferred_actions
- notes

result_handling_rules:
- pass should open confirmed DB-phase planning
- partial should open only explicitly confirmed areas
- hold should keep unresolved DB areas blocked
