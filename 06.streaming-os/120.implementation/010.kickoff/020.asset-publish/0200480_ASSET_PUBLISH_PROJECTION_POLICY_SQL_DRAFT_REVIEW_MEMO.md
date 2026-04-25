# ============================================================
# ASSET PUBLISH PROJECTION POLICY SQL DRAFT REVIEW MEMO
# ============================================================

status: canonical-ddl-draft-memo
layer: implementation
domain: asset-publish
system: StreamingOS
prepared_by: Zero
owner: Boss

draft_projection_plan:
- public archive read
  - use projection-safe archive view
- public clip read
  - use projection-safe clip view
- owner/control-plane read
  - use owner/control scoped projections
- oversight-safe read
  - use constrained oversight-safe projections
- external publish read
  - use owner/runtime/integration scoped projections only

draft_policy_plan:
- never expose external publish job as viewer-facing object
- never collapse archive and clip identity in projections
- keep publication/review/governance meaning separated in control-plane views
- keep source lineage precedence visible without exposing irrelevant control detail

open_review_points:
- exact split between public and oversight-safe asset projections
- exact owner/runtime/integration boundary for publish-job visibility
- whether asset projection views should derive tags and flags directly or through helper layers
- how future control-plane expansion avoids leaking into watch surfaces

important_note:
This memo describes projection/policy SQL direction only.
It is not final policy SQL.
