# ============================================================
# CREATOR VIEWER SQL PRECISION FIRST-PASS DECISION CANDIDATES
# ============================================================

status: canonical-first-pass-candidates
layer: implementation
domain: creator-viewer-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

candidate_decisions:

candidate_01:
- title: creator and viewer ids
- candidate: uuid
- reason: stable canonical identifiers across families

candidate_02:
- title: creator preference storage
- candidate: jsonb
- reason: additive preference evolution is likely

candidate_03:
- title: analytics snapshot ref storage
- candidate: text
- reason: snapshot indirection is projection-oriented

candidate_04:
- title: target identity storage for continuity collections
- candidate: target_type text plus target_id uuid
- reason: keeps item family semantics explicit without collapsing identities

candidate_05:
- title: follow uniqueness
- candidate: unique(principal_id, target_type, target_id)
- reason: aligns with single-follow semantic per viewer-target pair

candidate_06:
- title: playlist and watch queue ordering
- candidate:
  - integer position
  - per-parent uniqueness
- reason: simplest first schema for ordered collections

candidate_07:
- title: time field type
- candidate: timestamptz
- reason: consistent cross-platform event timing semantics

candidate_08:
- title: first index set
- candidate:
  - viewer_watch_histories: principal_id, watched_at
  - viewer_search_histories: principal_id, searched_at
  - subscription_follow_states: target_type, target_id
  - playlist_items: playlist_id, position_index
  - watch_queue_items: watch_queue_state_id, position_index
- reason: enough for first review without over-indexing

candidate_09:
- title: projection and privacy strategy
- candidate:
  - search history: self-private projection
  - watch history: self-private projection
  - shared playlist: dedicated shared projection
  - creator analytics: authorized projection only
- reason: preserves creator/viewer/private/shared boundaries
