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
- political_office -> office_specific_rule
- military_office -> office_specific_rule
- judicial_office -> human_required
- ceremonial_office -> office_specific_rule
- public_corporation_office -> office_specific_rule
- support_execution_role -> no_human_requirement


# ============================================================
# 2. FINAL RULE
# ============================================================

Office class
must resolve into a human requirement profile
before actor compatibility is checked.
