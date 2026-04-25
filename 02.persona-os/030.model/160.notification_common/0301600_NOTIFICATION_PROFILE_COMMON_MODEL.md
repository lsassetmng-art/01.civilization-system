# ============================================================
# NOTIFICATION PROFILE COMMON MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

definition:
Represents common notification capability state.

fields:
- notification_profile_id
- user_id
- notification_tier
- grouped_summary_enabled
- priority_notification_enabled
- renotification_enabled
- contextual_notification_enabled
- secretary_wording_enabled
- created_at
- updated_at

rules:
- capability and actual delivery result remain distinct
