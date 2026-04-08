# BUSINESS EVENT OUTBOX ARCHITECTURE
status: canonical
layer: architecture
system: business-os
scope: business-event-outbox

Defines the outbox as the authoritative dispatch staging layer.

## Responsibilities
- persist event before dispatch
- preserve retry safety
- support idempotent replay
- separate source event from transport state
