# ============================================================
# GAME TEMPLATE ASSET POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for Game Builder template and asset system lifecycle.

policy_rules:
- template family must bind to exactly one approved runtime family
- template projects must start from template selection, not blank engine construction
- beginner, standard, and advanced tiers must remain explicit
- protected, editable, and advanced override zones must remain explicit
- required asset families must be resolved before export
- pixel art, unit art, and building art are Builder/GameOS material assets
- Persona truth must not be mixed into non-Persona asset layers
- builder validation must block export when required asset families are unresolved
- template-asset truth must remain canonical

evaluation_order:
1 template family validity
2 template profile validity
3 runtime family validity
4 required asset set validity
5 asset profile validity
6 non-Persona boundary validity
7 asset binding validity
8 execution eligibility
