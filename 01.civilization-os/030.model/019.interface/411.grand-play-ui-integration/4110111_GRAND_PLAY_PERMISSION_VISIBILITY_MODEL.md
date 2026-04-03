# ============================================================
# GRAND PLAY PERMISSION VISIBILITY MODEL
# ============================================================

status: canonical
layer: model
scope: grand-play-ui-integration
component: grand-play-permission-visibility

owner: Boss
prepared_by: Zero


# ============================================================
# 1. VISIBILITY STATES
# ============================================================

visibility_states:
- hidden
- visible_teaser_only
- visible_overview_only
- visible_participation_entry
- visible_manage_entry
- visible_sovereign_entry
- visible_approval_required


# ============================================================
# 2. RULES
# ============================================================

rules:
- users may see teaser-level grand play before unlocking active control
- sovereign actions require stronger visibility gating than ordinary participation
- hidden should be used for sensitive systems where discovery itself is restricted
- approval-required states should explain missing office, authority, or legitimacy


# ============================================================
# 3. FINAL RULE
# ============================================================

Grand play UI
must reveal possibility
without falsely implying control.
