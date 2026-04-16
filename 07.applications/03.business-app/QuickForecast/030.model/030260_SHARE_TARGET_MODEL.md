# ============================================================
# SHARE TARGET MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: share_target
owner: Boss
prepared_by: Zero

purpose:
Defines Pro-tier share target structure.

share_target_types:
- user
- team
- department
- role_based_target

fields:
- share_target_id
- target_type_code
- target_id
- permission_level_code
- shared_by_user_id
- shared_at
- expires_at

permission_levels:
- view
- comment
- edit
- submit_assist
