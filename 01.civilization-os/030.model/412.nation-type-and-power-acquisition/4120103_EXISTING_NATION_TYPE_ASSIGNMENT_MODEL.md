# ============================================================
# EXISTING NATION TYPE ASSIGNMENT MODEL
# ============================================================

status: canonical
layer: model
scope: nation-type-and-power-acquisition
component: existing-nation-type-assignment

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ASSIGNMENTS
# ============================================================

assignments:
- nation: helios_democratic_kingdom
  governance_type: constitutional_monarchy
  civilization_character_types:
    - resource_state
    - industrial_state

- nation: nova_commercial_federation
  governance_type: federal_republic
  civilization_character_types:
    - commercial_state
    - financial_state

- nation: seiwa_nation
  governance_type: technocratic_state
  civilization_character_types:
    - education_research_state
    - industrial_state

- nation: gladia_military_alliance
  governance_type: military_state
  civilization_character_types:
    - military_hegemon
    - industrial_state

- nation: orpheus_maritime_federation
  governance_type: city_league_federation
  civilization_character_types:
    - maritime_state
    - agrarian_cultural_state

- nation: aurelia_federal_republic
  governance_type: personalist_dictatorship
  civilization_character_types:
    - military_hegemon

- nation: free_cities_union
  governance_type: city_league_federation
  civilization_character_types:
    - free_city_bloc
    - commercial_state


# ============================================================
# 2. FINAL RULE
# ============================================================

Existing nation assignment
must remain explicit
and may still be refined by nation-specific override.
