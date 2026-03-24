# ============================================================
# CIVILIZATION RECYCLING POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for recycling.

policy_rules:
- waste input, recovery target, and idempotency basis must remain explicit
- failed, reversed, or cancelled recycling batches must remain explicit
- circular traceability must remain preserved
- recycling truth must remain canonical

evaluation_order:
1 waste-input validity
2 recovery-target validity
3 idempotency basis validity
4 execution eligibility
