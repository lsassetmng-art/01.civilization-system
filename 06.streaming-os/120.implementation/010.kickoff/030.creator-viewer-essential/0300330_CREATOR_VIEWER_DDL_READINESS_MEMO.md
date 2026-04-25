# ============================================================
# CREATOR VIEWER DDL READINESS MEMO
# ============================================================

status: canonical-readiness-memo
layer: implementation
domain: creator-viewer-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Summarizes K3 readiness for future DDL drafting.

tables_in_scope:
- creator_profile_view_states
- creator_studio_drafts
- upload_preparation_records
- creator_settings_states
- creator_analytics_snapshot_refs
- viewer_home_feed_states
- viewer_search_histories
- viewer_watch_histories
- subscription_follow_states
- playlist_records
- playlist_items
- watch_queue_states
- watch_queue_items

meaning_level_ready_items:
- creator and viewer responsibility boundary is closed
- playlist and watch queue identity boundary is closed
- creator analytics and viewer discovery projection boundary is closed
- creator-side control-plane family meaning is closed
- viewer continuity privacy default is closed

still_precision_open:
- exact SQL type names
- exact JSON vs structured-column choices
- exact default clauses
- exact FK action clauses
- exact check syntax
- exact index method and partial-index strategy
- exact policy/projection SQL

ddl_risk_notes:
- do not collapse playlist and watch queue into one table family
- do not expose viewer private continuity data through broad projections
- do not widen creator analytics into public discovery outputs
- do not treat creator control-plane state as viewer-facing content state

recommended_future_order:
1. decide SQL precision items with Sato(DB reviewer)
2. draft creator-side base tables
3. draft viewer continuity tables
4. draft minimal indexes
5. draft private/shared projection strategies
6. review against K3 decision pack
