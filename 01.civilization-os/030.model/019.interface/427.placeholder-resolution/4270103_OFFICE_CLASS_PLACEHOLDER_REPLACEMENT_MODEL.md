# ============================================================
# OFFICE CLASS PLACEHOLDER REPLACEMENT MODEL
# ============================================================

status: canonical
layer: model
scope: placeholder-resolution
component: office-class-placeholder-replacement

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REPLACEMENTS
# ============================================================

replacements:
- political_office -> electoral_human_with_legitimacy_required
- military_office -> military_human_command_required
- ceremonial_office -> ceremonial_human_with_nation_override_required
- public_corporation_office -> public_corporation_actor_compatible


# ============================================================
# 2. FINAL RULE
# ============================================================

Default office-class placeholder replacement
provides canonical fallback behavior
before nation-specific overrides.
