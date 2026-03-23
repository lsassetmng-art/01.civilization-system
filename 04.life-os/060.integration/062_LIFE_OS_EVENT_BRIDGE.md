# ============================================================
# LIFE OS EVENT BRIDGE
# ============================================================

status: canonical
layer: 060.integration
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define event exchange boundaries for Life OS.

event_bridge_scope:
- outbound life summary events
- outbound reminder-related events
- outbound habit or routine milestone events
- inbound approved schedule-linked context events

bridge_rules:
- event contracts must be explicit
- persona-only state must not be inferred from life data without boundary approval
- business-domain mutations are out of scope
- failure in bridge delivery must not block local record persistence
