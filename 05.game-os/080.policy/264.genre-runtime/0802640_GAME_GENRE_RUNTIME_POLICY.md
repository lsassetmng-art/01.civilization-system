# ============================================================
# GAME GENRE RUNTIME POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for GameOS genre-runtime lifecycle.

policy_rules:
- runtime profile, ruleset, package, and ui template basis must remain explicit
- builder-backed games must resolve to an approved runtime family
- superseded or archived runtime assets must remain explicit
- genre-runtime truth must remain canonical

evaluation_order:
1 runtime profile validity
2 ruleset validity
3 package validity
4 template validity
5 compatibility validity
6 execution eligibility
