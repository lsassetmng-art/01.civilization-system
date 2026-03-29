# ============================================================
# CITY BUILDER ENUM MASTER PHASE1 ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: city-builder-enum-master-phase1
component: city-builder-enum-master-phase1

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the first canonical enum master phase
for City Builder.

This phase fixes the candidate value groups
that shape:

- city identity
- city scale
- urban core structure
- administrative tier
- settlement pattern
- district composition
- civic center placement logic


# ============================================================
# 2. INCLUDED ENUM GROUPS
# ============================================================

included_enum_groups:
- city_role_type
- city_scale_class
- urban_core_type
- administrative_tier
- settlement_pattern_type
- district_structure_type
- city_center_type
- capital_core_type
- prefectural_capital_core_type
- regional_capital_core_type
- civic_core_layout_type


# ============================================================
# 3. CORE PRINCIPLE
# ============================================================

These enum groups must be fixed first
because they influence:

- city placement identity
- center-core behavior
- downstream zoning behavior
- facility placement expectation
- political and administrative geography
- infrastructure connection logic


# ============================================================
# 4. FINAL RULE
# ============================================================

City Builder enum master phase 1
defines the structural vocabulary
for city identity and civic core composition.
