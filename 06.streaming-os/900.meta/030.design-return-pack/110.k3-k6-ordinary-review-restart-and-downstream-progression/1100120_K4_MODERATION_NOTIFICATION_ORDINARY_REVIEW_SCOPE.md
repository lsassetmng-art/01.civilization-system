# ============================================================
# K4 MODERATION NOTIFICATION ORDINARY REVIEW SCOPE
# ============================================================

status: canonical-scope
layer: meta
domain: k3-k6-ordinary-review-restart-and-downstream-progression
system: StreamingOS
prepared_by: Zero
owner: Boss

review_scope:
- review pipeline exact payload
- moderation exact payload
- notification exact payload
- table-column exactness
- auth / rls exactness
- screen to endpoint mapping
- api transport exactness
- payload to ddl mapping
- ddl draft reading

review_focus:
- moderation evidence/display refs stay reference-only
- report / appeal / alert / inbox remain Streaming-local operational truth
- no moderation-owned persona internal truth is implied
- no direct mutation path is implied

review_non_focus:
- implementation coding
- db apply
- PersonaOS redesign
