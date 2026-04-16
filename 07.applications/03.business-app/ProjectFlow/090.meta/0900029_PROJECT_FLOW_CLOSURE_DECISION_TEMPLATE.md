# ============================================================
# PROJECT FLOW CLOSURE DECISION TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for a future closure decision.

decision_template:
- decision_result: pass_or_hold
- decision_date:
- closure_scope:
- stable_items_confirmed:
- intentionally_open_items_confirmed:
- implementation_not_started_confirmed:
- next_phase_selected:

pass_condition_examples:
- major contradictions are not found
- major scope gaps are not found
- handoff summary is sufficient
- next chat can continue without reopening core identity

hold_condition_examples:
- unresolved contradictions remain
- major missing areas remain
- key boundary wording is still unstable
