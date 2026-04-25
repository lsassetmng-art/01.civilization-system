# ============================================================
# STREAMWATCH PHASE1 SERVICE SQL BINDING
# ============================================================

status: implementation-freeze
system: StreamingOS
app: StreamWatch
phase: phase1
owner: Boss
prepared_by: Zero

purpose:
Bind the current watch service layer to additive SQL helpers while
keeping the phase1 watch table boundary honest.

bound_routes:
- GET /streamwatch/profile/list
- POST /streamwatch/profile/select
- POST /streamwatch/home-feed/read
- POST /streamwatch/category-tree/read
- POST /streamwatch/library/read
- POST /streamwatch/progress/upsert
- POST /streamwatch/tv-handoff/start
- POST /streamwatch/tv-handoff/claim
- POST /streamwatch/entitlement/read

sql_helpers:
- streaming.v_streamwatch_profiles
- streaming.v_streamwatch_category_tree_active
- streaming.v_streamwatch_library_history
- streaming.fn_streamwatch_progress_upsert
- streaming.fn_streamwatch_claim_handoff

fixed_rule:
No dedicated favorite table or watch_later table is introduced in this pass.
Deferred library sections must remain adapter-backed or empty-state backed.
