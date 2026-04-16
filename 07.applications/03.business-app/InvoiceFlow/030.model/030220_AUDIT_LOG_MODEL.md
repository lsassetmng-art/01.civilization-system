# ============================================================
# AUDIT LOG MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

fields:
- audit_log_id
- actor_user_id
- action_code
- target_type
- target_id
- before_json
- after_json
- occurred_at
