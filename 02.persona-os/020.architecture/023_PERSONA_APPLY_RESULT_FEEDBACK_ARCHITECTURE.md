# ============================================================
# PERSONA APPLY RESULT FEEDBACK ARCHITECTURE
# ============================================================

status: implementation-ready-followup

feedback_goal:
Every inbound request must have a durable terminal feedback record.

feedback_paths:
- applied
- rejected
- duplicate_noop
- deferred_retry
- dead_lettered

required_properties:
- correlation id
- target persona id
- terminal status
- fixed code
- fixed message family
- written_at timestamp
