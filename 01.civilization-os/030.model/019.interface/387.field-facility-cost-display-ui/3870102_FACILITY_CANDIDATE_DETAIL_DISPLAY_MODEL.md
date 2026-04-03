# ============================================================
# FACILITY CANDIDATE DETAIL DISPLAY MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-cost-display-ui
component: facility-candidate-detail-display

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED DETAIL BLOCKS
# ============================================================

required_detail_blocks:
- facility_identity_block
- service_summary_block
- build_cost_block
- maintenance_block
- build_time_block
- activation_block
- zoning_and_operator_block
- review_requirement_block
- modifier_summary_block
- placement_warning_block


# ============================================================
# 2. FINAL RULE
# ============================================================

Candidate detail must answer
what this facility is,
what it opens,
what it costs,
how long it takes,
and what may delay it.
