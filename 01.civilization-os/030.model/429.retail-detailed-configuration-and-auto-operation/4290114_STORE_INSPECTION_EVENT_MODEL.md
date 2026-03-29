# ============================================================
# STORE INSPECTION EVENT MODEL
# ============================================================

status: canonical
layer: model
scope: retail-detailed-configuration-and-auto-operation
component: store-inspection-event

owner: Boss
prepared_by: Zero


# ============================================================
# 1. EVENT TYPES
# ============================================================

store_inspection_event_types:
- scheduled_inspection
- surprise_inspection
- complaint_triggered_inspection
- intensified_policy_inspection
- post_disaster_hygiene_inspection
- special_fresh_food_inspection


# ============================================================
# 2. FINAL RULE
# ============================================================

Retail facilities
may become subjects of inspection events.
