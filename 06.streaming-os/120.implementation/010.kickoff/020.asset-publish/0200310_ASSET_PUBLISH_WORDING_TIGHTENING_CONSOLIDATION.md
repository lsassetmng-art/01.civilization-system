# ============================================================
# ASSET PUBLISH WORDING TIGHTENING CONSOLIDATION
# ============================================================

status: canonical-refinement
layer: implementation
domain: asset-publish
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Consolidates wording-tightening points for K2 asset-publish.

tightening_points:

clip_lineage_precedence:
- source_archive_asset_id defines canonical lineage when present
- source_session_id records provenance context only
- provenance context must never override archive lineage

asset_state_boundary:
- publication_state defines distribution-facing availability
- review_state defines review workflow progression
- governance_state defines policy/rule eligibility gating
- review/governance may influence publication transitions without replacing publication_state

external_publish_identity:
- external_publish_job is orchestration/control state only
- external_publish_job is never viewer-facing playable content
- creator/control-plane visibility remains separate from viewer watch visibility

publish_source_family:
- publish_source_type is closed to session, archive_asset, and clip_asset
- no convenience source families are implied
- publish_source_id polymorphism is valid only within the closed family set
