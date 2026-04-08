# ============================================================
# CIVILIZATION SECRET POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for secrets and keys.

policy_rules:
- custody, rotation, and revocation basis must remain explicit
- rotating, revoked, or destroyed secret states must remain explicit
- key traceability must remain preserved
- secret truth must remain canonical
