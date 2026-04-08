# ============================================================
# CIVILIZATION NATION GOVERNANCE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for nation governance.

policy_rules:
- nation governance must remain approval-bound when required
- authority scope must be explicit
- constitutional basis must be resolvable
- nation truth must not be mutated by unauthorized paths

evaluation_order:
1 target identity validity
2 authority scope validity
3 approval validity
4 constitutional basis validity
5 execution eligibility
