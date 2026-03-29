# ============================================================
# OFFICE SPECIFIC RULE PROFILE ENUM MODEL
# ============================================================

status: canonical
layer: model
scope: placeholder-resolution
component: office-specific-rule-profile-enum

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENUM VALUES
# ============================================================

office_specific_rule_profile_enum:
- electoral_human_required
- electoral_human_with_legitimacy_required
- appointment_human_required
- appointment_human_with_loyalty_required
- military_human_command_required
- military_human_with_service_record_required
- bloodline_human_required
- bloodline_human_with_dynasty_required
- ceremonial_human_required
- ceremonial_human_with_nation_override_required
- public_corporation_actor_compatible
- public_corporation_human_preferred
- non_human_support_only
- nation_override_explicit_required


# ============================================================
# 2. FINAL RULE
# ============================================================

legacy office legality placeholder token
must be replaced by
resolved explicit office legality profiles.
