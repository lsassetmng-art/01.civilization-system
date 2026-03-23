# ============================================================
# LIFE OS FAILURE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define policy-level handling principles for failures in Life OS.

failure_policy:
- fail closed on unsafe outbound behavior
- preserve local records first
- degrade gracefully where possible
- require traceability of failed jobs and sync attempts
- avoid silent data loss

priority_order:
1 record preservation
2 data integrity
3 privacy protection
4 service continuity
5 convenience
