# ============================================================
# PROJECT FLOW CLOSURE DECISION TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for recording the formal closure decision
for the current ProjectFlow design and planning cycle.

template_fields:
- closure_decision_date
- closure_result: pass_or_partial_or_hold
- approved_done_scope
- approved_but_deferred_scope
- blocked_scope
- future_sophistication_scope
- basis_documents
- followup_required
- notes

decision_rules:
- closure decision must reflect approved reality only
- blocked scope must remain blocked explicitly
- deferred scope must not be mislabeled as done
- future sophistication must remain distinct from blocked scope
