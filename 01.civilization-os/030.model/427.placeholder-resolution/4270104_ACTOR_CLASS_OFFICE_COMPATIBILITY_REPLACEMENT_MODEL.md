# ============================================================
# ACTOR CLASS OFFICE COMPATIBILITY REPLACEMENT MODEL
# ============================================================

status: canonical
layer: model
scope: placeholder-resolution
component: actor-class-office-compatibility-replacement

owner: Boss
prepared_by: Zero


# ============================================================
# 1. USER PERSONA REPLACEMENTS
# ============================================================

user_persona_replacements:
- military_office -> military_human_with_service_record_required
- ceremonial_office -> ceremonial_human_with_nation_override_required


# ============================================================
# 2. AI HUMAN REPLACEMENTS
# ============================================================

ai_human_replacements:
- military_office -> military_human_with_service_record_required
- ceremonial_office -> ceremonial_human_with_nation_override_required


# ============================================================
# 3. AI ROBOT REPLACEMENTS
# ============================================================

ai_robot_replacements:
- political_office -> nation_override_explicit_required
- military_office -> non_human_support_only
- ceremonial_office -> nation_override_explicit_required
- public_corporation_office -> public_corporation_actor_compatible


# ============================================================
# 4. FINAL RULE
# ============================================================

Actor compatibility placeholders
must resolve into explicit profiles.
