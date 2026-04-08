# ============================================================
# CIVILIZATION REPLAY POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for replay.

policy_rules:
- replay must be idempotency-safe
- replay must remain auditable
- replay must not silently rewrite truth state
- approval may be required depending on replay scope

evaluation_order:
1 replay eligibility
2 approval requirement
3 idempotency basis validity
4 compatibility check
5 execution readiness
