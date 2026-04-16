# ============================================================
# NAMECARD SHARE TARGET MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_share_target
owner: Boss
prepared_by: Zero

purpose:
Defines share targets for app-internal sharing.

fields:
- share_target_id
- owner_user_id
- target_user_id
- target_scope
- is_enabled
- created_at
- updated_at

notes:
- Used only for app-internal sharing.
- ERP-wide publication does not use share_target.
