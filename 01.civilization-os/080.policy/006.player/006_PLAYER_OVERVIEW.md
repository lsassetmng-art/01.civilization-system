# ============================================================
# 006 PLAYER OVERVIEW
# ============================================================

status: canonical
layer: policy
domain: player
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the policy overview of the player domain.

summary:
The player policy layer defines what player data may be shown,
what participation is allowed,
how role and progress are governed,
how historical player state is retained,
and what kinds of external or internal mutations are prohibited.

policy_intent:
Player is canonical participation truth.
Policy exists to prevent unauthorized lifecycle change,
unsafe disclosure of role or boundary data,
and confusion between live and historical player states.

scope:
- player disclosure policy
- lifecycle policy
- role policy
- progress policy
- boundary policy
- retention policy
- overwrite and correction policy

policy_rules:
- Live and historical player states must remain distinct.
- Archived or historical-only player state must not be treated as live.
- Restricted role, progress, or boundary details must not be disclosed outside allowed scope.
- External payload must not overwrite canonical player truth without authority.
