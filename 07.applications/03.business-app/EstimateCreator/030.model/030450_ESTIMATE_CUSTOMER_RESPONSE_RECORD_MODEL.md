
# ============================================================
# ESTIMATE CUSTOMER RESPONSE RECORD MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

estimate_customer_response_record stores manually recorded customer response.

Required fields:
- customer_response_id
- estimate_id
- customer_response_state
- responded_at
- response_note
- recorded_by
- created_at
- updated_at

Representative customer_response_state values:
- no_response
- accepted
- revision_requested
- rejected

