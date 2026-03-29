# ============================================================
# NATION LINKAGE PAYLOAD MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-to-nation-linkage
component: nation-linkage-payload

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED PAYLOAD FIELDS
# ============================================================

required_payload_fields:
- facility_event_id
- facility_id
- facility_type
- operator_id
- nation_id
- city_id
- district_id
- event_type
- open_state
- construction_state
- metric_target_set
- occurred_at


# ============================================================
# 2. FINAL RULE
# ============================================================

Nation linkage payload
must carry enough location and state context
to update aggregate metrics cleanly.
