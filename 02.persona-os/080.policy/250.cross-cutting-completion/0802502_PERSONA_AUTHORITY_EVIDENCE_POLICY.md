# ============================================================
# PERSONA AUTHORITY EVIDENCE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for authority, approval, evidence,
ownership boundary, and compatibility governance in PersonaOS.

policy_rules:
- authority basis, ownership boundary, and compatibility basis must remain explicit
- superseded, invalidated, or revised states must remain explicit
- cross-domain evidence traceability must remain preserved
- authority and evidence truth must remain canonical

evaluation_order:
1 target validity
2 authority validity
3 ownership-boundary validity
4 compatibility validity
5 evidence validity
6 execution eligibility
