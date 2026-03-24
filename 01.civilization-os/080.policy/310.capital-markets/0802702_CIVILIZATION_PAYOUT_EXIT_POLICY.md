# ============================================================
# CIVILIZATION PAYOUT EXIT POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for distributions and exits.

policy_rules:
- ownership, source-event, and settlement identity basis must remain explicit
- duplicate effective settlement must be prevented
- reversed or failed settlements must remain explicit
- payout and exit truth must remain canonical

evaluation_order:
1 source-event validity
2 ownership-basis validity
3 settlement identity validity
4 idempotency basis validity
5 execution eligibility
