# ============================================================
# CIVILIZATION INVENTORY POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for inventory.

policy_rules:
- inventory target and lineage must remain explicit
- exhausted or constrained positions must remain explicit
- provisional positions must not appear silently current
- inventory truth must remain canonical
