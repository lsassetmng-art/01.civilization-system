# ============================================================
# STREAMING CORE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for streaming core lifecycle.

policy_rules:
- channel, program, session, schedule, archive, and clip basis must remain explicit
- interrupted, cancelled, revised, invalidated, or archived states must remain explicit
- streaming traceability must remain preserved
- streaming core truth must remain canonical
