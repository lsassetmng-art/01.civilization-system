# ============================================================
# EXISTING NATION POWER ROUTE OVERRIDE MODEL
# ============================================================

status: canonical
layer: model
scope: nation-type-and-power-acquisition
component: existing-nation-power-route-override

owner: Boss
prepared_by: Zero


# ============================================================
# 1. HELIOS DEMOCRATIC KINGDOM
# ============================================================

helios_democratic_kingdom:
  boosted_weight_dimensions:
    - dynastic_legitimacy
    - public_support
    - royal_house_support
  reduced_weight_dimensions:
    - coercive_power
  legitimacy_special_rule_set:
    - monarchy_survives_but_public_acceptance_matters


# ============================================================
# 2. NOVA COMMERCIAL FEDERATION
# ============================================================

nova_commercial_federation:
  boosted_weight_dimensions:
    - coalition_power
    - public_support
    - port_or_trade_support
  legitimacy_special_rule_set:
    - corporate_influence_bias_allowed
  succession_special_rule_set:
    - commercial_elite_backing_affects_ascent


# ============================================================
# 3. SEIWA NATION
# ============================================================

seiwa_nation:
  boosted_weight_dimensions:
    - governance_score
    - administrative_merit
    - scientific_prestige
    - institutional_trust
  reduced_weight_dimensions:
    - bloodline_rank
  legitimacy_special_rule_set:
    - orderly_meritocratic_legitimacy_bias


# ============================================================
# 4. GLADIA MILITARY ALLIANCE
# ============================================================

gladia_military_alliance:
  boosted_weight_dimensions:
    - war_hero_score
    - military_support
    - discipline_reputation
    - national_glory
  legitimacy_special_rule_set:
    - battlefield_and_command_legitimacy_bias


# ============================================================
# 5. ORPHEUS MARITIME FEDERATION
# ============================================================

orpheus_maritime_federation:
  boosted_weight_dimensions:
    - city_support
    - port_or_trade_support
    - regional_legitimacy
  legitimacy_special_rule_set:
    - port_city_consensus_bias


# ============================================================
# 6. AURELIA FEDERAL REPUBLIC
# ============================================================

aurelia_federal_republic:
  boosted_weight_dimensions:
    - ruler_favor
    - coercive_power
    - inner_circle_rank
  reduced_weight_dimensions:
    - public_support
  legitimacy_special_rule_set:
    - formal_republic_label_does_not_override_real_power_path


# ============================================================
# 7. FREE CITIES UNION
# ============================================================

free_cities_union:
  boosted_weight_dimensions:
    - city_support
    - coalition_power
    - port_or_trade_support
  legitimacy_special_rule_set:
    - multi_city_bargain_legitimacy_bias


# ============================================================
# 8. FINAL RULE
# ============================================================

Existing nations
must preserve distinctive power ascent logic
even when governance labels appear similar.
