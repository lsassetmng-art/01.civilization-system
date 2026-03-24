# ============================================================
# CIVILIZATION COMPLIANCE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for compliance review.

policy_rules:
- compliance review must reference explicit governing rule
- compliance outcome must remain auditable
- failed compliance may route to enforcement or escalation
- waived compliance must remain explicit

evaluation_order:
1 target validity
2 governing rule validity
3 review basis validity
4 outcome classification
