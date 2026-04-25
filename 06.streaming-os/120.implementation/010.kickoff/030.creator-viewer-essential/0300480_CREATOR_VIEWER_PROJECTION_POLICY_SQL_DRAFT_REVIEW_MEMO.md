# ============================================================
# CREATOR VIEWER PROJECTION POLICY SQL DRAFT REVIEW MEMO
# ============================================================

status: canonical-ddl-draft-memo
layer: implementation
domain: creator-viewer-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

draft_projection_plan:
- creator control-plane reads
  - use creator/control scoped projections
- creator analytics reads
  - use authorized creator/oversight-safe projections only
- viewer search history reads
  - use self-private projections only
- viewer watch history reads
  - use self-private projections only
- shared playlist reads
  - use dedicated shared-playlist projection
- watch queue reads
  - use self-private projection only

draft_policy_plan:
- do not expose private continuity state on public or shared surfaces
- do not let creator control-plane endpoints mutate viewer continuity by policy convenience
- keep playlist sharing separate from watch queue visibility
- keep runtime repair path for watch queue explicit and narrowly bounded
- keep creator analytics projections non-public and audience-bounded

open_review_points:
- exact split between self-private and limited authorized views
- whether shared playlist projection is fully view-based or mixed with policy guards
- where runtime repair authority is anchored
- whether some home-feed state remains better as generated projection than exposed stored state

important_note:
This memo describes projection/policy SQL direction only.
It is not final policy SQL.
