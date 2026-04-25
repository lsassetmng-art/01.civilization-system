# ============================================================
# PERSONA MANIFEST DELIVERY POLICY
# ============================================================

status: canonical
layer: 080.policy
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for manifest projection, validation, and bundle delivery.

policy_rules:
- manifest, target, projection, and composition basis must remain explicit
- duplicate effective delivery must be prevented
- failed, reversed, or superseded manifest states must remain explicit
- manifest delivery truth must remain canonical

evaluation_order:
1 manifest validity
2 target validity
3 composition validity
4 projection validity
5 idempotency basis validity
6 execution eligibility
