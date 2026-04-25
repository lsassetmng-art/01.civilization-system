# ============================================================
# ASSET PUBLISH PAYLOAD TO API TRANSPORT MEMO
# ============================================================

status: canonical-mapping-memo
layer: implementation
domain: asset-publish
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Maps K2 exact payload meaning to later API transport implementation work.

in_scope_endpoints:
- get_archive_asset_detail
- list_archive_assets
- get_clip_asset_detail
- list_clip_assets
- create_external_publish_job
- get_external_publish_job_detail
- list_external_publish_jobs

transport_notes:

archive_detail:
- uses success/data/meta envelope
- data is a single archive projection object
- public transport must not expose internal storage or review notes

archive_list:
- uses success/data/meta envelope
- data.items is a collection projection
- filtering must remain allowlist-based at transport stage

clip_detail:
- uses success/data/meta envelope
- detail transport may include both source references when semantically allowed
- transport must preserve archive lineage precedence meaning

clip_list:
- list transport remains projection-safe
- clip identity must remain distinct from archive identity even where UI blocks are shared

external_publish_create:
- request must include idempotency_key
- transport must preserve control-plane semantics
- create response may use canonical mutation response shape

external_publish_detail:
- detail transport is creator/control-plane facing only
- target credentials and secret-bearing details must never be transported

external_publish_list:
- list transport remains owner/control-plane scoped
- transport must not imply viewer visibility or playability

cross_endpoint_note:
- auth carrier placement remains transport-stage detail
- HTTP/RPC binding remains open
- error-to-status mapping remains open
- runtime dispatch/retry remains internal-only and not part of public transport semantics
