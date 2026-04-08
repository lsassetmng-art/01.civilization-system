# BUSINESS EVENT OUTBOX MODEL
status: canonical
layer: model
system: business-os
scope: business-event-outbox

Dispatch staging model.

## Minimum Fields
- outbox_id
- event_id
- dispatch_status
- dispatch_attempts
- next_retry_at
- last_error_code
- last_error_message
