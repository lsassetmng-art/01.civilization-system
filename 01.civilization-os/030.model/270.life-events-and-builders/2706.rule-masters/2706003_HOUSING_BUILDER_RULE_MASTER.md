# ============================================================
# CITY BUILDER RULE MASTER
# ============================================================

status: canonical
layer: model
scope: life-events-and-builders
component: city-builder-rule-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical rule master
for City Builder.


# ============================================================
# 2. RULE MASTER FIELDS
# ============================================================

rule_master_fields:
- city_builder_rule_code
- rule_name
- rule_scope
- enabled_flag
- severity
- note


# ============================================================
# 3. RULE THEMES
# ============================================================

rule_themes:
- housing_placement_rule
- residential_block_rule
- urban_block_rule
- city_center_rule
- prefectural_capital_core_rule
- regional_capital_core_rule
- living_area_layout_rule
- settlement_expansion_rule


# ============================================================
# 4. PRINCIPLE
# ============================================================

City Builder structure is canonical.
City Builder operating conditions
are configurable through rule masters.


# ============================================================
# 5. FINAL RULE
# ============================================================

City Builder rules
must govern urban spatial composition,
not housing-only logic.
