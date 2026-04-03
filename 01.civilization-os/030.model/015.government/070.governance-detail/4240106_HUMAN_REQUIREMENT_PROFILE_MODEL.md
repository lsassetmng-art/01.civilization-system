# ============================================================
# HUMAN REQUIREMENT PROFILE MODEL
# ============================================================

status: canonical
layer: model
scope: public-office-actor-compatibility
component: human-requirement-profile

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIREMENT PROFILES
# ============================================================

human_requirement_profiles:
- human_required
- human_preferred
- office_specific_rule
- no_human_requirement


# ============================================================
# 2. FINAL RULE
# ============================================================

Every office compatibility rule
must declare one human requirement profile.
