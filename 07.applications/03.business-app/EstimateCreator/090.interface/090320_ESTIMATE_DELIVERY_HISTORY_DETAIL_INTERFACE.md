
# ============================================================
# ESTIMATE DELIVERY HISTORY DETAIL INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Delivery history detail should show:

- delivery_channel
- delivery_state
- revision_snapshot_id or revision_no
- artifact_type
- locale_code
- currency_code
- presented_at
- latest_opened_at
- open_count
- related customer response state if any

The interface must distinguish:
- delivered
- opened
- accepted
- revision_requested
- rejected

