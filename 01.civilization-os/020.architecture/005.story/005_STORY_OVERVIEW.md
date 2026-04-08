# ============================================================
# 005 STORY OVERVIEW
# ============================================================

status: canonical
layer: architecture
domain: story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the architecture overview of the story domain.

summary:
The story domain governs canonical narrative progression,
story context, stage transitions, and story-linked interpretation
without replacing world truth or player truth.

design_intent:
Story is not decorative text.
It is canonical progression meaning.
Story exists so the world, player, and event layers
can be interpreted through meaningful staged context.

scope:
- world-level story
- player-level story
- event-linked story
- progression story
- story transition and branching

non_scope:
- free-form lore dump without canonical binding
- UI-only presentation text
- replacement of world identity or player identity
- ad hoc script flags hidden in implementation

canonical_rules:
- Story must bind to canonical scope.
- Story must support stage and branch semantics.
- Story must preserve historical progression.
- Story must not silently rewrite world truth.
- Story must not be reduced to UI text only.

required_behavior:
- Define story units and story stages.
- Define branch and progression semantics.
- Define actor and consumer boundary.
- Define historical retention and replay relevance.
