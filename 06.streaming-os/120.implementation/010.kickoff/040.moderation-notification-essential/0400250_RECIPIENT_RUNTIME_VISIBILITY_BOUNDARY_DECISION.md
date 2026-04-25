# ============================================================
# RECIPIENT RUNTIME VISIBILITY BOUNDARY DECISION
# ============================================================

status: canonical-decision
layer: implementation
domain: moderation-notification-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

decision_id:
K4-003

decision:
Recipient-facing notification visibility and runtime delivery visibility remain distinct.

recipient-facing:
- notification_record
- read_flag
- title
- preview/detail projection
- recipient-scoped target reference

runtime-facing:
- notification_delivery_state
- delivery_state
- retry/fanout routing internals
- broker/runtime delivery markers

rules:
- recipient must not receive runtime delivery internals
- recipient-side read mutation must not mutate delivery-state internals
- platform_event_record remains non-public root event object
