# ============================================================
# GAME BUILDER WEBAPP POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for Game Builder Web App lifecycle.

policy_rules:
- workspace, project, runtime, template, export, validation, and publish pipeline basis must remain explicit
- publish submission without accepted export and passed validation is prohibited
- builder projects must remain bound to approved runtime families
- collaboration and autosave lineage must remain explicit
- builder-webapp truth must remain canonical

evaluation_order:
1 workspace validity
2 project validity
3 runtime validity
4 template validity
5 export validity
6 validation validity
7 publish pipeline validity
8 collaboration validity
9 execution eligibility
