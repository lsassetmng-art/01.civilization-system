# ============================================================
# HISTORY ENTRY MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: history_entry
owner: Boss
prepared_by: Zero

purpose:
Represents historical audit-worthy events in Pro operation.

event_examples:
- created
- edited
- scenario_selected
- action_generated
- proposal_generated
- profit_preview_updated
- approval_requested
- approval_granted
- approval_rejected
- synchronized
- submitted

fields:
- history_entry_id
- target_type_code
- target_id
- event_type_code
- event_summary
- actor_user_id
- occurred_at
