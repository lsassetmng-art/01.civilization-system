# ============================================================
# POWER ACQUISITION WEIGHT DIMENSION MODEL
# ============================================================

status: canonical
layer: model
scope: nation-type-and-power-acquisition
component: power-acquisition-weight-dimension

owner: Boss
prepared_by: Zero


# ============================================================
# 1. DIMENSIONS
# ============================================================

dimensions:
- public_support
- election_strength
- coalition_power
- trust
- media_image
- war_hero_score
- military_support
- national_glory
- discipline_reputation
- party_favor
- central_committee_support
- patronage_spend
- ideological_alignment
- loyalty_to_leadership
- ruler_favor
- blood_relation
- inner_circle_rank
- coercive_power
- purge_survival_score
- bloodline_rank
- dynastic_legitimacy
- marriage_link_strength
- royal_house_support
- succession_priority
- governance_score
- administrative_merit
- scientific_prestige
- institutional_trust
- elite_support
- religious_legitimacy
- priesthood_support
- doctrinal_alignment
- public_reverence
- city_support
- port_or_trade_support
- regional_legitimacy
- federal_balance_support


# ============================================================
# 2. FINAL RULE
# ============================================================

Power acquisition evaluation
must use weighted dimensions,
not narrative-only judgment.
