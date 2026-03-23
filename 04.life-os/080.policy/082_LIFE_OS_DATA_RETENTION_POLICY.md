# ============================================================
# LIFE OS DATA RETENTION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define retention and pruning policy for Life OS data.

retention_principles:
- primary life records should be preserved by default
- destructive deletion should be minimized
- summaries may be regenerated
- retention classes must distinguish raw, derived, and operational data

retention_classes:
- primary_personal_records
- derived_summaries
- sync_logs
- operational_logs
- cache_or_temporary_artifacts

policy_rules:
- retention windows must be explicit
- purge targets must exclude protected primary records unless explicitly approved
- retention must support audit and personal continuity needs
