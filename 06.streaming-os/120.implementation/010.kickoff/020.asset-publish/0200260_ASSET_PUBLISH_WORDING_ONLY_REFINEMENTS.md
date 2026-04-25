# ============================================================
# ASSET PUBLISH WORDING-ONLY REFINEMENTS
# ============================================================

status: canonical-refinement
layer: implementation
domain: asset-publish
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Records wording-only refinements for K2 asset-publish.
These refinements do not change meaning-level decisions.

refinement_targets:

clip_lineage_precedence_note:
before:
- source_archive_asset_id is the primary lineage reference and source_session_id is provenance context only

refined_wording:
- source_archive_asset_id defines canonical clip lineage when present
- source_session_id records derivation context and provenance only
- provenance context must not be interpreted as lineage override

asset_state_boundary_note:
before:
- publication_state, review_state, and governance_state remain three distinct state families

refined_wording:
- publication_state defines distribution-facing availability
- review_state defines review workflow progression
- governance_state defines policy/rule eligibility gating
- governance and review may influence publication transitions, but neither replaces publication_state

external_publish_control_plane_note:
before:
- external publish job is a control-plane object, not a watch object

refined_wording:
- external_publish_job must be treated as orchestration/control state
- external_publish_job must never be treated as viewer-facing playable content
- creator/control-plane visibility must remain separate from viewer watch visibility

publish_source_family_note:
before:
- publish_source_id is polymorphic only within the allowed source family set

refined_wording:
- publish_source_id polymorphism is closed to session, archive_asset, and clip_asset only
- no indirect or convenience source families are implied
- validation must fail when publish_source_type falls outside the closed family set

viewer_projection_note:
before:
- viewer screens map only to archive/clip projections

refined_wording:
- viewer-facing screens may consume only projection-safe archive/clip detail or list outputs
- viewer-facing screens must not expose publish-control or dispatch-state semantics
