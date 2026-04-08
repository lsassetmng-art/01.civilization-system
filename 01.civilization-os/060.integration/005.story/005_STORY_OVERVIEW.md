# ============================================================
# 005 STORY OVERVIEW
# ============================================================

status: canonical
layer: integration
domain: story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the integration overview of the story domain.

summary:
The story integration layer governs how live story context,
story summaries, branch-safe projections,
historical replay, and audit-safe narrative traces
cross internal and external boundaries.

integration_intent:
Story carries canonical meaning, not just display text.
When story crosses boundaries, it must remain stage-safe,
branch-safe, historical-safe, and consumer-appropriate.

scope:
- internal story projection
- external public-safe story projection
- historical replay export
- audit-safe story trace export
- rejection of unsafe or misleading story transfer

integration_rules:
- Canonical story ownership remains inside CivilizationOS.
- Live story and replay story must remain distinguishable.
- Public projection must not leak restricted internal story implications.
- Imported narrative payload must not overwrite canonical story truth without authority.
