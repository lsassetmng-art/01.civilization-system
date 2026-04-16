
# ============================================================
# ESTIMATE PERMISSION RUNTIME
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Permission runtime must distinguish:

- authenticated
- authorized
- readonly
- premium-entitled

Runtime must not treat these as equivalent.

Representative runtime outputs:

- can_view
- can_edit
- can_share
- can_request_publication
- can_use_premium_write
- is_customer_readonly_view

