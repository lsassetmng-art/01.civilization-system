# ============================================================
# NATION BUILDER POLICY SUMMARY CARD MODEL
# ============================================================

status: canonical
layer: model
scope: military-and-infrastructure-ui-integration
component: nation-builder-policy-summary-card

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SUMMARY CARD BLOCKS
# ============================================================

summary_card_blocks:
- military_service_mode_summary
- mobilization_mode_summary
- loyalty_effect_summary
- infrastructure_governance_summary
- road_and_rail_operator_summary
- station_and_port_authority_summary
- override_count_summary


# ============================================================
# 2. FINAL RULE
# ============================================================

Nation Builder summary
must let users see
the military and infrastructure posture
at a glance.
