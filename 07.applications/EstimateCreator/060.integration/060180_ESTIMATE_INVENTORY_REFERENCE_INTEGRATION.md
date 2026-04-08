# ============================================================
# ESTIMATE INVENTORY REFERENCE INTEGRATION
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Inventory reference integration connects EstimateCreator
to ERP-connected inventory information services.

Required request characteristics:

- item_code or product identifier
- company context when required
- requesting user context
- request time

Required response characteristics:

- available quantity
- reserved quantity when available
- inbound quantity when available
- source timestamp
- reference freshness signal
- success/failure signal

Inventory response is reference-only unless authoritative policy states otherwise.

