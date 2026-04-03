# ============================================================
# CIVILIZATION INFRASTRUCTURE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for infrastructure maintenance.

policy_rules:
- maintenance requires explicit target and lifecycle state
- approval may be required depending on maintenance scope
- completed or failed maintenance must remain explicit
- infrastructure maintenance truth must remain canonical
