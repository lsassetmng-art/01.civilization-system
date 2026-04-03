# ============================================================
# GOVERNANCE TYPE POWER ROUTE DEFAULT MODEL
# ============================================================

status: canonical
layer: model
scope: nation-type-and-power-acquisition
component: governance-type-power-route-default

owner: Boss
prepared_by: Zero


# ============================================================
# 1. DEFAULTS
# ============================================================

defaults:
- governance_type: electoral_democracy
  primary_routes:
    - public_election_route
    - parliamentary_coalition_route
  secondary_routes:
    - media_influence_assisted_route
  dominant_weights:
    - public_support
    - election_strength
    - coalition_power
    - trust
    - media_image

- governance_type: constitutional_monarchy
  primary_routes:
    - parliamentary_coalition_route
    - bloodline_route
  secondary_routes:
    - public_election_route
    - marriage_alliance_route
  dominant_weights:
    - dynastic_legitimacy
    - public_support
    - coalition_power
    - royal_house_support

- governance_type: absolute_monarchy
  primary_routes:
    - bloodline_route
    - marriage_alliance_route
  secondary_routes:
    - ruler_favor_route
  dominant_weights:
    - bloodline_rank
    - dynastic_legitimacy
    - royal_house_support
    - succession_priority

- governance_type: military_state
  primary_routes:
    - military_heroism_route
    - military_command_route
  secondary_routes:
    - public_election_route
    - coup_route
  dominant_weights:
    - war_hero_score
    - military_support
    - national_glory
    - discipline_reputation
    - public_support

- governance_type: party_socialist_state
  primary_routes:
    - party_patronage_route
  secondary_routes:
    - ruler_favor_route
    - revolutionary_capture_route
  dominant_weights:
    - party_favor
    - central_committee_support
    - patronage_spend
    - ideological_alignment
    - loyalty_to_leadership

- governance_type: personalist_dictatorship
  primary_routes:
    - ruler_favor_route
    - bloodline_route
  secondary_routes:
    - coup_route
  dominant_weights:
    - ruler_favor
    - blood_relation
    - inner_circle_rank
    - coercive_power
    - purge_survival_score

- governance_type: federal_republic
  primary_routes:
    - public_election_route
    - parliamentary_coalition_route
  secondary_routes:
    - regional_power_broker_route
  dominant_weights:
    - public_support
    - coalition_power
    - federal_balance_support
    - regional_legitimacy
    - trust

- governance_type: city_league_federation
  primary_routes:
    - parliamentary_coalition_route
    - city_consensus_route
  secondary_routes:
    - commercial_elite_route
  dominant_weights:
    - city_support
    - port_or_trade_support
    - coalition_power
    - regional_legitimacy

- governance_type: technocratic_state
  primary_routes:
    - technocratic_merit_route
  secondary_routes:
    - ruler_favor_route
    - parliamentary_coalition_route
  dominant_weights:
    - governance_score
    - administrative_merit
    - scientific_prestige
    - institutional_trust
    - elite_support

- governance_type: theocratic_state
  primary_routes:
    - theocratic_legitimacy_route
  secondary_routes:
    - bloodline_route
    - ruler_favor_route
  dominant_weights:
    - religious_legitimacy
    - priesthood_support
    - doctrinal_alignment
    - public_reverence


# ============================================================
# 2. FINAL RULE
# ============================================================

Governance type defaults
define the baseline power acquisition logic,
but not the final nation behavior.
