# ============================================================
# LIFE PERSONA INTEGRATION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for life persona integration lifecycle.

policy_rules:
- persona, consent, visibility, payload, and contract basis must remain explicit
- revoked, failed, dead-lettered, ignored, or rejected states must remain explicit
- duplicate effective sync consumption must be prevented
- life persona integration truth must remain canonical

evaluation_order:
1 target validity
2 persona validity
3 consent validity
4 contract validity
5 idempotency basis validity
6 execution eligibility
