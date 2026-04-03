# ============================================================
# NATION TYPE CIVIL SERVICE COMPATIBILITY MODEL
# ============================================================

status: canonical
layer: model
scope: civil-service-eligibility
component: nation-type-civil-service-compatibility

owner: Boss
prepared_by: Zero


# ============================================================
# 1. DEFAULT COMPATIBILITY
# ============================================================

default_compatibility:
- electoral_democracy:
    user_persona: eligible
    ai_human: eligible
    ai_robot: ineligible_non_human

- constitutional_monarchy:
    user_persona: eligible
    ai_human: eligible
    ai_robot: ineligible_non_human

- absolute_monarchy:
    user_persona: eligible_with_appointment
    ai_human: eligible_with_appointment
    ai_robot: ineligible_non_human

- military_state:
    user_persona: eligible_with_loyalty_requirement
    ai_human: eligible_with_loyalty_requirement
    ai_robot: ineligible_non_human

- party_socialist_state:
    user_persona: eligible_with_loyalty_requirement
    ai_human: eligible_with_loyalty_requirement
    ai_robot: ineligible_non_human

- personalist_dictatorship:
    user_persona: eligible_with_appointment
    ai_human: eligible_with_appointment
    ai_robot: ineligible_non_human

- federal_republic:
    user_persona: eligible
    ai_human: eligible
    ai_robot: ineligible_non_human

- city_league_federation:
    user_persona: eligible
    ai_human: eligible
    ai_robot: ineligible_non_human

- technocratic_state:
    user_persona: eligible_with_exam
    ai_human: eligible_with_exam
    ai_robot: ineligible_non_human

- theocratic_state:
    user_persona: ceremonial_human_with_nation_override_required
    ai_human: ceremonial_human_with_nation_override_required
    ai_robot: ineligible_non_human


# ============================================================
# 2. FINAL RULE
# ============================================================

Nation type may alter entry route and requirements,
but must not erase the human-only office rule.
