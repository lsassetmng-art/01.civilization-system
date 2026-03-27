# ============================================================
# NATION BUILDER UI FLOW MODEL
# ============================================================

status: canonical
layer: model
scope: nation-builder-final-integration
component: nation-builder-ui-flow

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CANONICAL FLOW
# ============================================================

canonical_builder_flow:
- create_or_load_nation_seed
- define_identity_and_foundation
- define_geography_and_population
- define_economy_and_culture
- define_zoning_and_military
- define_power_structure
- define_legislature
- define_executive
- define_appointment_and_elites
- define_factions_and_influence
- run_validation
- inspect_preview_and_summary
- persist_or_export_seed


# ============================================================
# 2. FLOW RULES
# ============================================================

flow_rules:
- governance builders should not open before nation identity exists
- legislature and executive builders should respect power structure mode
- preview should be available before export
- export should be blocked on hard validation failure
- regime change flows should be hidden unless transition state exists


# ============================================================
# 3. FINAL RULE
# ============================================================

Builder flow must guide the user
from foundation to governance
to summary without ambiguity.
