# ============================================================
# GAME BUILDER AUTOSAVE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official autosave policy of Game Builder.

This policy defines:
- autosave cadence
- autosave triggers
- autosave retention expectations
- autosave visibility rules
- autosave recovery expectations


# ============================================================
# 1. AUTOSAVE PRINCIPLE
# ============================================================

Autosave is for recovery, not formal release preparation.

Autosave must remain separate from official save.


# ============================================================
# 2. AUTOSAVE CADENCE
# ============================================================

Recommended baseline:
- autosave after 3 to 5 seconds of edit inactivity
- autosave on meaningful structural changes
- autosave on editor context switches where helpful

Autosave cadence must balance:
- recovery value
- backend load
- creator clarity


# ============================================================
# 3. AUTOSAVE TRIGGERS
# ============================================================

Good autosave trigger examples:
- block content edited
- block reordered
- asset binding changed
- asset edit committed
- template-derived structure materially changed

Autosave should not fire for every trivial hover/select event.


# ============================================================
# 4. AUTOSAVE RETENTION
# ============================================================

Autosave retention should be bounded.

Recommended policy:
- keep recent autosaves for recovery
- allow supersession of older autosaves
- aggressively clean obsolete autosaves after clear supersession

Retention must not be confused with immutable revision history.


# ============================================================
# 5. AUTOSAVE VISIBILITY
# ============================================================

The user must be able to tell:
- whether autosave exists
- whether autosave is newer than latest official save
- that autosave is not official save

This visibility is mandatory.


# ============================================================
# 6. FINAL POLICY RULE
# ============================================================

Builder autosave must be recovery-oriented and explicit.

Core summary:

- autosave should be frequent enough for safety
- autosave triggers should be meaningful
- retention should be bounded
- autosave must never masquerade as official save
