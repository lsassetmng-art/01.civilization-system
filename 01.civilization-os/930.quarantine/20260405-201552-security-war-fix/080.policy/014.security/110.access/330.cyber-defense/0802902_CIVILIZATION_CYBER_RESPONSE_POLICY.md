# ============================================================
# CIVILIZATION CYBER RESPONSE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for cyber incidents and response.

policy_rules:
- detection, incident, and response authority basis must remain explicit
- contained, eradicated, recovered, or archived incident states must remain explicit
- duplicate effective containment actions must be prevented
- cyber-incident truth must remain canonical

evaluation_order:
1 incident validity
2 detection validity
3 response-authority validity
4 containment identity validity
5 idempotency basis validity
6 execution eligibility
