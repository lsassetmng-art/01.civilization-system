# ============================================================
# CREATOR VIEWER SQL PRECISION DECISION PRE-SHEET
# ============================================================

status: canonical-pre-sheet
layer: implementation
domain: creator-viewer-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Prepares the decision sheet for SQL-precision review of K3 creator-viewer-essential.

review_role_note:
- Sato(DB reviewer) is required when SQL phase starts

creator_side_decisions_to_close:
- exact SQL type choices for creator-side ids and principal-bound FKs
- exact SQL type for linked_session_id references
- exact field type strategy for draft title/description fields
- exact field type strategy for source locator and checksum references
- exact JSON vs structured-column decision for creator notification_preference
- exact JSON vs structured-column decision for creator studio_preference
- exact snapshot_ref storage strategy for analytics snapshot references

viewer_side_decisions_to_close:
- exact SQL type choices for viewer-side ids and principal-bound FKs
- exact field type strategy for query_text in search history
- exact field type strategy for item_type/item_id pair storage
- exact unique constraint shape for follow state
- exact unique constraint shape for playlist order indices
- exact unique constraint shape for watch queue order indices
- exact timestamp type choices for searched_at, watched_at, and updated_at

constraint_and_index_decisions_to_close:
- minimal index set for viewer history lookup
- minimal index set for search history compaction-related lookup
- minimal index set for follow target lookup
- minimal index set for playlist item ordering queries
- minimal index set for watch queue ordering queries
- partial index deferral vs immediate introduction

policy_sql_decisions_to_close:
- exact projection strategy for viewer home feed support state
- exact private-read strategy for search history and watch history
- exact shared-playlist projection strategy
- exact runtime repair mutation boundary for watch queue
- exact oversight-safe subset strategy for creator analytics projections

note:
This sheet prepares SQL review only.
It does not execute SQL against PERSONA_DATABASE_URL.
