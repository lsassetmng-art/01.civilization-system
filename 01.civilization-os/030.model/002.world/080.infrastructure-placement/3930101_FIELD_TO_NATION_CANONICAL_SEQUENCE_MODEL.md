# ============================================================
# FIELD TO NATION CANONICAL SEQUENCE MODEL
# ============================================================

status: canonical
layer: model
scope: field-nation-cross-integration
component: field-to-nation-canonical-sequence

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CANONICAL SEQUENCE
# ============================================================

canonical_sequence:
- user_selects_target_lot
- user_selects_facility_type
- placement_validation_runs
- build_confirmation_opens
- build_execution_commits
- facility_construction_state_updates
- facility_open_state_updates
- nation_linkage_executes
- nation_aggregate_updates
- nation_ui_surfaces_refresh


# ============================================================
# 2. FINAL RULE
# ============================================================

The same canonical sequence
must be reusable for add,
remove,
replace,
suspend,
and reopen flows.
