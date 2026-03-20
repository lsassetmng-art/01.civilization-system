# ============================================================
# LOGGING ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Logging preserves authoritative execution history for audit, debugging,
traceability, and recovery analysis.

log_categories:
- event_log
- validation_log
- permission_log
- execution_log
- failure_log
- notification_log

rules:
- logs must be append-oriented
- destructive rewrite of authoritative logs is forbidden
- every critical event path must have traceable log coverage

final_rule:
Runtime logs must preserve execution truth, not merely summarize it.
