# ============================================================
# APPROVAL EVENT MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: approval_event
owner: Boss
prepared_by: Zero

purpose:
Defines approval event history for Pro operation.

event_types:
- requested
- reminded
- approved
- rejected
- canceled

fields:
- approval_event_id
- approval_request_id
- event_type_code
- actor_user_id
- event_note
- occurred_at
