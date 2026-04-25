# ============================================================
# CLIP DUAL SOURCE REFERENCE RULE DECISION
# ============================================================

status: canonical-decision
layer: implementation
domain: asset-publish
system: StreamingOS
prepared_by: Zero
owner: Boss

decision_id:
K2-001

decision:
When both source_archive_asset_id and source_session_id exist on a clip,
source_archive_asset_id is the primary lineage reference and
source_session_id is retained as provenance context only.

canonical_rule:
- clip may reference source_archive_asset_id only
- clip may reference source_session_id only
- clip may reference both during transitional or derivation-rich flows
- when both exist, source_archive_asset_id is the canonical content-lineage parent
- when both exist, source_session_id is contextual provenance and does not replace archive lineage

allowed_patterns:
- direct live/session clipping:
  - source_session_id present
  - source_archive_asset_id null
- archive-derived clipping:
  - source_archive_asset_id present
  - source_session_id optional
- transitional derivation:
  - both may be present
  - archive ref stays primary for lineage interpretation

forbidden_interpretations:
- source_session_id must not override source_archive_asset_id when both exist
- dual-reference presence must not collapse clip identity into archive identity
- provenance context must not be mistaken for canonical parentage

canonical_effect:
K2 clip payload and table-column exactness must be read with
archive lineage precedence and session provenance secondary.
