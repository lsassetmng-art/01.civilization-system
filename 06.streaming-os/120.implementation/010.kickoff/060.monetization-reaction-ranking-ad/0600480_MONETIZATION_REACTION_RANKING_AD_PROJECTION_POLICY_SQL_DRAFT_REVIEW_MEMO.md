# ============================================================
# MONETIZATION REACTION RANKING AD PROJECTION POLICY SQL DRAFT REVIEW MEMO
# ============================================================

status: canonical-ddl-draft-memo
layer: implementation
domain: monetization-reaction-ranking-ad
system: StreamingOS
prepared_by: Zero
owner: Boss

draft_projection_plan:
- creator-safe monetization reads
  - use creator/authorized monetization summary projections
- public ranking reads
  - use public-safe ranking projections
- viewer ad candidate reads
  - use viewer-safe ad candidate projections
- runtime/control reads
  - use runtime-only or control-plane scoped projections
- raw event reads
  - keep non-public unless explicitly authorized and scoped

draft_policy_plan:
- do not expose raw tip events or raw reaction events on public surfaces
- do not expose ranking_generation_batches as public ranking payload
- do not expose ad targeting or insertion internals through candidate-facing surfaces
- keep creator-safe, public-safe, viewer-safe, and runtime-only audiences separated
- keep ad display logging distinct from ad control editing semantics

open_review_points:
- exact split between creator-safe monetization summaries and broader authorized finance-like views
- whether public ranking projections derive directly from ranking_results or through helper layers
- exact viewer-safe ad candidate projection boundary
- how raw-event non-public enforcement is layered without overcomplicating first DDL review

important_note:
This memo describes projection/policy SQL direction only.
It is not final policy SQL.
