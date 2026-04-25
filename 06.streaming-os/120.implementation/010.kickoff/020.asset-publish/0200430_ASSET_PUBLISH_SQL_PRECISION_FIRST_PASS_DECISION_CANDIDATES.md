# ============================================================
# ASSET PUBLISH SQL PRECISION FIRST-PASS DECISION CANDIDATES
# ============================================================

status: canonical-first-pass-candidates
layer: implementation
domain: asset-publish
system: StreamingOS
prepared_by: Zero
owner: Boss

candidate_decisions:

candidate_01:
- title: archive/clip/external job ids
- candidate: uuid
- reason: stable canonical cross-domain references

candidate_02:
- title: duration and clip range storage
- candidate: integer seconds
- reason: meaning-level granularity is currently second-based

candidate_03:
- title: category_tags storage
- candidate: text[]
- reason: simple first schema with additive flexibility

candidate_04:
- title: asset and publish state storage
- candidate: text plus check constraints
- reason: easier additive change than early enum lock-in

candidate_05:
- title: publish_source_id storage
- candidate: uuid
- reason: closed source families are uuid-addressable

candidate_06:
- title: time fields
- candidate: timestamptz
- reason: safer scheduling and publish-time semantics

candidate_07:
- title: first index set
- candidate:
  - archive: principal_id, publication_state, published_at
  - clip: source_archive_asset_id
  - clip: source_session_id
  - publish: job_state, scheduled_publish_at
- reason: enough for first review without over-indexing

candidate_08:
- title: projection and control-plane split
- candidate: public asset projection views + separate owner/control-plane views
- reason: prevents viewer/control-plane semantic leakage
