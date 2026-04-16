
# ============================================================
# ESTIMATE CUSTOMER RESPONSE BASIS MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

estimate_customer_response_basis links a customer response
to the exact revision snapshot that was presented.

Required fields:
- customer_response_basis_id
- customer_response_id
- estimate_id
- revision_snapshot_id
- delivery_record_id
- delivery_artifact_id
- created_at

This prevents ambiguity about
which estimate version the customer responded to.

