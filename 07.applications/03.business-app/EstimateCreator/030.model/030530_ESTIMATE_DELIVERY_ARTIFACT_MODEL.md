
# ============================================================
# ESTIMATE DELIVERY ARTIFACT MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

estimate_delivery_artifact stores the concrete delivery-facing artifact
associated with a delivered estimate revision.

Required fields:
- delivery_artifact_id
- estimate_id
- revision_snapshot_id
- delivery_record_id
- artifact_type
- artifact_state
- artifact_reference_id
- locale_code
- currency_code
- created_at
- created_by

Representative artifact_type values:
- pdf
- readonly_link_payload
- email_render

Representative artifact_state values:
- prepared
- delivered
- expired
- revoked

