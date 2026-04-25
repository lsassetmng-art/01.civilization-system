# ============================================================
# K4 MODERATION NOTIFICATION DDL PRECONDITION RECONFIRMATION
# ============================================================

status: canonical-reconfirmation
layer: meta
domain: k3-k6-exactness-body
system: StreamingOS
prepared_by: Zero
owner: Boss

ddl_precondition_rule:
K4 DDL-facing readings are allowed only if:
- persona-facing moderation fields are evidence/display refs only
- signed snapshot and result-event semantics are explicit
- no local persona canonical ownership is inferred
- no direct mutation route is introduced in SQL or RLS interpretation

ddl_safe_meaning:
K4 DDL remains a base structure for:
- moderation pipeline
- report / appeal handling
- review alerts
- notification / inbox / delivery operational truth

ddl_unsafe_meaning:
K4 DDL must not be read as persona internal-truth storage or moderation-owned persona state.
