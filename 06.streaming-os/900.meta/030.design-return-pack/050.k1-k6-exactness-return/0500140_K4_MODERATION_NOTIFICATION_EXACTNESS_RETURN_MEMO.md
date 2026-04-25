# ============================================================
# K4 MODERATION NOTIFICATION EXACTNESS RETURN MEMO
# ============================================================

status: canonical-return-memo
layer: meta
domain: k1-k6-exactness-return
system: StreamingOS
prepared_by: Zero
owner: Boss

return_rule:
K4 moderation-notification exactness must be re-read with the following lock:

locked_reading:
- report / appeal / moderation / notification may reference persona display or
  identity refs only
- moderation outcomes do not mutate Persona internal truth
- review and alert pathways do not create local persona canonical ownership

exactness_keepable_if_read_correctly:
- review pipeline exact payload
- moderation exact payload
- notification exact payload
- auth / rls boundaries
- screen to endpoint mapping

must_not_be_inferred:
- local moderation-owned persona internal truth
- direct persona mutation via moderation route
