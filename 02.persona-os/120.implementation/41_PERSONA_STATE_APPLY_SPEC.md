# ============================================================
# PERSONA STATE APPLY SPEC
# ============================================================

status: canonical
component: persona-state-apply

owner: Boss
prepared_by: Zero

# PURPOSE

Apply signed civilization events
to persona state.

# PROCESS

1 receive event
2 verify signature
3 validate schema
4 confirm persona existence
5 apply state mutation
6 store growth_events
7 optional snapshot trigger

# SAFETY RULES

idempotent execution required
duplicate events must not break state
invalid signatures must be rejected

