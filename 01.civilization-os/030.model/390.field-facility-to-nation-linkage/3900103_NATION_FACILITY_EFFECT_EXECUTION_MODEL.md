# ============================================================
# NATION FACILITY EFFECT EXECUTION MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-to-nation-linkage
component: nation-facility-effect-execution

owner: Boss
prepared_by: Zero


# ============================================================
# 1. EXECUTION MODES
# ============================================================

execution_modes:
- direct_metric_delta_update
- derived_metric_recalculation
- district_then_nation_rollup
- city_then_nation_rollup
- outbox_write_for_followup


# ============================================================
# 2. RULES
# ============================================================

rules:
- facility_opened may use direct_metric_delta_update or derived_metric_recalculation
- facility_removed may use direct_metric_delta_update or derived_metric_recalculation
- anchor_facility_opened may prefer district_then_nation_rollup
- market_board_opened may update market_legibility and civic_visibility
- suspended facilities must reduce effective contribution without deleting historical presence
- replaced facilities must remove old contribution and apply new contribution in order


# ============================================================
# 3. FINAL RULE
# ============================================================

Execution must be deterministic
and explainable from facility event
to nation metric change.
