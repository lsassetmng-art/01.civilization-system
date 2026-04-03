# ============================================================
# NATION MODIFIER MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-modifier-evaluation
component: nation-modifier

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED FIELDS
# ============================================================

nation_modifier_fields:
- nation_id
- facility_type_or_null
- build_cost_multiplier
- maintenance_multiplier
- build_time_multiplier
- activation_delay_seconds
- note
- enabled_flag


# ============================================================
# 2. EXAMPLE DIRECTIONAL TRENDS
# ============================================================

example_directional_trends:
- seiwa may favor civic clarity and stable medium costs
- nova core cities may raise finance and premium facility cost
- gladia may reduce practical state-linked facility friction
- orpheus may favor smaller communal facilities over large towers
- aurelia may increase instability-linked cost or delay
- free_cities_union may vary strongly by city implementation


# ============================================================
# 3. FINAL RULE
# ============================================================

Nation modifiers express environment differences,
not facility identity differences.
