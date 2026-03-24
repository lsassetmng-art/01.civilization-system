# ============================================================
# CIVILIZATION TOURISM COMPLIANCE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for tourism funding and compliance.

policy_rules:
- recipient, tourism, and review basis must remain explicit
- duplicate effective funding allocation must be prevented
- escalated or superseded tourism reviews must remain explicit
- tourism-compliance truth must remain canonical

evaluation_order:
1 target validity
2 tourism basis validity
3 recipient validity
4 idempotency basis validity
5 execution eligibility
