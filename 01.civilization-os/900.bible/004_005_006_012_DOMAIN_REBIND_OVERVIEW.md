# ============================================================
# 004 / 005 / 006 / 012 DOMAIN REBIND OVERVIEW
# ============================================================

status: canonical
type: bible-navigation
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Summarizes the intent and usage of the rebound bundle for:
004.mode
005.story
006.player
012.integration

summary:
This rebound bundle exists to make the following domains
reviewable as one connected design surface:

- 004.mode
- 005.story
- 006.player
- 012.integration

design_intent:
These four domains are tightly connected.

mode:
Defines canonical interpretive context.

story:
Defines canonical progression meaning.

player:
Defines canonical participant truth.

integration:
Defines controlled boundary crossing.

When reviewed separately, cross-domain risks are easy to miss.
When reviewed together, the following risks become easier to detect:
- current versus history mixing
- authority inflation
- unsafe projection
- branch leakage
- player-state confusion
- proposal/write lane confusion

recommended_usage:
- review architecture through development in one pass
- review current/history separation across all four domains
- review actor/authority clarity across all four domains
- review infrastructure support for policy/security claims
- review implementation and development sufficiency before rebinding or bible regeneration

source_of_truth_rule:
The canonical source of truth remains the original files
under each layer/domain directory.

The rebound files exist for:
- integrated reading
- consistency review
- handoff
- pre-bible review

not_for:
- source editing
- silent replacement of canonical files
