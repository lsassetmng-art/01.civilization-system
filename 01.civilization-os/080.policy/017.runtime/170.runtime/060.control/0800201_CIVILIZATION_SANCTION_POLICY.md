# ============================================================
# CIVILIZATION SANCTION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for sanctions.

policy_rules:
- sanctions require explicit authority or approval when required
- sanction lifecycle must remain traceable
- expired or lifted sanctions must not remain implicitly active
- sanction truth must remain explicit

evaluation_order:
1 sanction target validity
2 enforcement linkage validity
3 approval validity where required
4 execution eligibility
