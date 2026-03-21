# ============================================================
# PERSONA EVENT APPLY RUNTIME
# ============================================================

status: canonical
component: persona-event-apply-runtime

owner: Boss
prepared_by: Zero

# PURPOSE

Apply verified events to persona state.

# PROCESS

1 Verify event signature
2 Validate event schema
3 Confirm persona existence
4 Apply event logic
5 Write audit record

# EVENT SOURCES

civilization events
internal persona events
approved system operations

# SAFETY RULES

event application must be idempotent
duplicate events must not corrupt state

