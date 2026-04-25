# ============================================================
# ASSET PUBLISH EXACTNESS REVIEW CHECKLIST
# ============================================================

status: canonical-checklist
layer: implementation
domain: asset-publish
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
This checklist is used to review the K2 asset-publish exact pack
before implementation starts.

scope:
- archive asset
- clip asset
- external publish job

review_targets:
- 0200120_ARCHIVE_ASSET_EXACT_PAYLOAD.md
- 0200130_CLIP_ASSET_EXACT_PAYLOAD.md
- 0200140_EXTERNAL_PUBLISH_EXACT_PAYLOAD.md
- 0200150_ARCHIVE_ASSET_TABLE_COLUMN_EXACTNESS.md
- 0200160_CLIP_ASSET_TABLE_COLUMN_EXACTNESS.md
- 0200170_EXTERNAL_PUBLISH_JOB_TABLE_COLUMN_EXACTNESS.md
- 0200180_ASSET_AUTH_RLS_EXACTNESS.md
- 0200190_EXTERNAL_PUBLISH_AUTH_RLS_EXACTNESS.md
- 0200200_SCREEN_TO_ENDPOINT_MAPPING.md

checklist:

archive_asset:
- archive_asset identity is distinct and stable
- source_session_id remains optional only where justified
- publication_state remains distinct from review_state
- publication_state remains distinct from governance_state
- public read remains projection-safe only

clip_asset:
- clip identity remains distinct from archive identity
- source_archive_asset_id and source_session_id semantics remain separated
- clip_start_seconds / clip_end_seconds meaning is clear
- shared UI family does not collapse archive vs clip domain identity

external_publish:
- external publish job remains control-plane object
- publish_source_type / publish_source_id semantics are explicit
- job_state remains distinct from dispatch_state
- result_state remains optional until result exists
- target credentials and secrets remain excluded from public payloads

auth_rls:
- public asset read always means projection-safe subset
- external publish is never public read
- ownership and affiliation remain separate
- runtime/integration mutation remains bounded to system execution scope
- support-path semantics remain explicit and auditable

screen_mapping:
- viewer screens map only to archive/clip projections
- creator/control-plane screens may map to publish job endpoints
- external publish never appears as viewer watch object

gate_condition:
- all blocking semantic ambiguities must be resolved before implementation
- wording-only refinements may remain open
