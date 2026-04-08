# ============================================================
# STREAMING LIVE EVENT EXTERNAL LINKAGE MODEL
# ============================================================

status: canonical
layer: model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define external linkage surfaces
used by live events.

external_linkages:
- venue_truth_link
- city_transport_condition_link
- district_crowd_condition_link
- security_authority_link
- retail_and_food_facility_link
- hospital_emergency_support_link
- media_distribution_link
- monetization_settlement_link

final_rule:
Live events may depend on external conditions,
but event truth remains in StreamingOS.
