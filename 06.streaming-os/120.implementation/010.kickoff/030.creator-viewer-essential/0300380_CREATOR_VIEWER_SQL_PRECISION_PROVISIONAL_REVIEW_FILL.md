# ============================================================
# CREATOR VIEWER SQL PRECISION PROVISIONAL REVIEW FILL
# ============================================================

status: canonical-provisional-review-fill
layer: implementation
domain: creator-viewer-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Provides Zero's provisional fill for the K3 SQL precision worksheet.
This is a draft for review acceleration and not final DB sign-off.

review_position:
- provisional
- pending Sato(DB reviewer) review
- no SQL executed

provisional_recommendations:

creator_side_tables:
- creator-side ids
  - recommended_choice: uuid
  - rationale: stable cross-domain canonical ids
- principal-bound creator FKs
  - recommended_choice: uuid FK
  - rationale: direct relationship clarity
- linked_session_id
  - recommended_choice: uuid FK nullable
  - rationale: not all creator-side preparation objects require linked session immediately
- draft title / description
  - recommended_choice: text
  - rationale: avoid premature length over-constraint
- source_locator_ref / checksum_ref
  - recommended_choice: text
  - rationale: flexible external locator and digest representation
- notification_preference / studio_preference
  - recommended_choice: jsonb
  - rationale: preference structures are likely additive
- analytics snapshot_ref
  - recommended_choice: text
  - rationale: snapshot indirection is projection-oriented, not heavy structured state

viewer_side_tables:
- viewer-side ids
  - recommended_choice: uuid
- principal-bound continuity FKs
  - recommended_choice: uuid FK
- query_text
  - recommended_choice: text
- item_type
  - recommended_choice: text + check constraint where closed set is stable enough
- item_id
  - recommended_choice: uuid
  - rationale: current content identity families are uuid-addressable
- subscription follow uniqueness
  - recommended_choice: unique(principal_id, target_type, target_id)
- playlist order indices
  - recommended_choice: integer position with per-playlist uniqueness
- watch queue order indices
  - recommended_choice: integer position with per-watch-queue uniqueness
- searched_at / watched_at / updated_at
  - recommended_choice: timestamptz

indexes_and_constraints:
- viewer history lookup
  - recommended_choice: index(principal_id, watched_at desc)
- search history lookup
  - recommended_choice: index(principal_id, searched_at desc)
- follow target lookup
  - recommended_choice: index(target_type, target_id)
- playlist ordering
  - recommended_choice: index(playlist_id, position_index)
- watch queue ordering
  - recommended_choice: index(watch_queue_state_id, position_index)
- partial indexes
  - recommended_choice: defer unless review proves need

policy_projection_strategy:
- search history / watch history
  - recommended_choice: self-private by default through projection/view strategy
- shared playlist
  - recommended_choice: separate shared-playlist projection strategy
- watch queue repair/runtime mutation
  - recommended_choice: explicit scoped runtime mutation path only
- creator analytics
  - recommended_choice: creator/authorized projection family only
