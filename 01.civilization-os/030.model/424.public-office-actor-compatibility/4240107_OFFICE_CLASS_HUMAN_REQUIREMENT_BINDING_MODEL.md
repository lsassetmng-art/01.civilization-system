# ============================================================
# OFFICE CLASS HUMAN REQUIREMENT BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: public-office-actor-compatibility
component: office-class-human-requirement-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. BINDINGS
# ============================================================

bindings:
- civil_service_office -> human_required
- political_office -> electoral_human_with_legitimacy_required
- military_office -> military_human_command_required
- judicial_office -> human_required
- ceremonial_office -> ceremonial_human_with_nation_override_required
- public_corporation_office -> public_corporation_actor_compatible
- support_execution_role -> no_human_requirement


# ============================================================
# 2. FINAL RULE
# ============================================================

Office class
must resolve into a human requirement profile
before actor compatibility is checked.
