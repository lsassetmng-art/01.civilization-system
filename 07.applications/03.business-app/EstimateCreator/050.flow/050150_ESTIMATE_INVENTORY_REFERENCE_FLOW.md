# ============================================================
# ESTIMATE INVENTORY REFERENCE FLOW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Inventory reference flow:

1. user selects item or estimate line
2. application checks online availability
3. if online, inventory reference request is sent
4. ERP-connected result is received
5. result is stored as reference record
6. UI updates freshness and stock state
7. if offline, cached value may be shown with warning

