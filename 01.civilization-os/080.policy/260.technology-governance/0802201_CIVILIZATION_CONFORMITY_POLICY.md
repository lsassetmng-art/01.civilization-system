# ============================================================
# CIVILIZATION CONFORMITY POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for conformity and certification.

policy_rules:
- specification version and compatibility basis must remain explicit
- failed, revoked, or expired certifications must remain explicit
- conformity traceability must remain preserved
- conformity truth must remain canonical

evaluation_order:
1 target validity
2 specification-version validity
3 compatibility validity
4 execution eligibility
