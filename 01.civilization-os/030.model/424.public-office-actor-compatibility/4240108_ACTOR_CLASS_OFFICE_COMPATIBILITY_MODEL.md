# ============================================================
# ACTOR CLASS OFFICE COMPATIBILITY MODEL
# ============================================================

status: canonical
layer: model
scope: public-office-actor-compatibility
component: actor-class-office-compatibility

owner: Boss
prepared_by: Zero


# ============================================================
# 1. DEFAULT COMPATIBILITY
# ============================================================

default_compatibility:
- user_persona:
    civil_service_office: compatible
    political_office: compatible
    military_office: military_human_with_service_record_required
    judicial_office: compatible
    ceremonial_office: ceremonial_human_with_nation_override_required
    public_corporation_office: compatible
    support_execution_role: compatible

- ai_human:
    civil_service_office: compatible
    political_office: compatible
    military_office: military_human_with_service_record_required
    judicial_office: compatible
    ceremonial_office: ceremonial_human_with_nation_override_required
    public_corporation_office: compatible
    support_execution_role: compatible

- ai_robot:
    civil_service_office: incompatible_non_human
    political_office: nation_override_explicit_required
    military_office: military_human_with_service_record_required
    judicial_office: incompatible_non_human
    ceremonial_office: ceremonial_human_with_nation_override_required
    public_corporation_office: public_corporation_actor_compatible
    support_execution_role: compatible


# ============================================================
# 2. FINAL RULE
# ============================================================

Actor compatibility
must be explicit at office-class level
before nation or office overrides apply.
