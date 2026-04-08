# ============================================================
# ESTIMATE SHARE API CONTRACT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Share API contract supports app-internal sharing
to preconfigured users.

Required share request characteristics:

- object_type
- object_id
- source_user_id
- target_user_id
- share_scope
- request_time

Required response qualities:

- accepted
- rejected
- already_shared
- revoke_completed
- revoke_failed

