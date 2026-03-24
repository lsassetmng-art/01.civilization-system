# ============================================================
# STREAMING MONETIZATION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for monetization and settlement lifecycle.

policy_rules:
- session, payout, settlement, and source basis must remain explicit
- duplicate effective settlement or allocation must be prevented
- failed, reversed, superseded, or archived states must remain explicit
- streaming monetization truth must remain canonical

evaluation_order:
1 target validity
2 session validity
3 payout validity
4 settlement validity
5 idempotency basis validity
6 execution eligibility
