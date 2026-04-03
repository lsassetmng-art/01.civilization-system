# ============================================================
# CIVILIZATION CONTROL POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for operational control actions.

policy_rules:
- control target, action basis, and identity must remain explicit
- failed, reversed, or cancelled control actions must remain explicit
- duplicate effective control actions must be prevented
- control-action truth must remain canonical
