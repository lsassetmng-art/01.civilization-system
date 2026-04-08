# ============================================================
# 005 STORY OVERVIEW
# ============================================================

status: canonical
layer: policy
domain: story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the policy overview of the story domain.

summary:
The story policy layer defines what story data may be shown,
which story states are live or historical,
how branching is controlled,
what must be retained,
and what kinds of narrative disclosure are prohibited.

policy_intent:
Story carries canonical meaning and progression.
Policy exists to prevent live/history confusion,
unsafe branch disclosure,
and ungoverned narrative overwrite.

scope:
- live story disclosure policy
- historical replay policy
- branch disclosure policy
- retention policy
- correction policy
- external narrative suggestion policy

policy_rules:
- Live story and replay story must remain distinct.
- Historical story must be explicitly labeled.
- Restricted branch context must not be disclosed outside allowed scope.
- Canonical story progression must not be overwritten by external narrative payload without authority.
