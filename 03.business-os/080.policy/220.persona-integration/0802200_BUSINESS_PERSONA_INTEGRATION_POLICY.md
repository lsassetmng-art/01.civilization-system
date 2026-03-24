# ============================================================
# BUSINESS PERSONA INTEGRATION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for business persona integration lifecycle.

policy_rules:
- actor, persona, binding, entitlement, and contract basis must remain explicit
- suspended, revoked, expired, failed, or dead-lettered states must remain explicit
- duplicate effective sync consumption must be prevented
- business persona integration truth must remain canonical

evaluation_order:
1 target validity
2 actor validity
3 persona validity
4 binding validity
5 contract validity
6 idempotency basis validity
7 execution eligibility
