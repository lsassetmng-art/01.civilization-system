# ============================================================
# ASSET PUBLISH API TRANSPORT READINESS MEMO
# ============================================================

status: canonical-readiness-memo
layer: implementation
domain: asset-publish
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Summarizes K2 readiness for later API transport design.

endpoints_in_scope:
- get_archive_asset_detail
- list_archive_assets
- get_clip_asset_detail
- list_clip_assets
- create_external_publish_job
- get_external_publish_job_detail
- list_external_publish_jobs

meaning_level_ready_items:
- archive detail/list meaning is closed
- clip detail/list meaning is closed
- clip lineage precedence meaning is closed
- external publish create/detail/list meaning is closed
- viewer/control-plane audience separation is closed

transport_precision_open:
- exact HTTP method
- exact path
- exact RPC naming
- exact auth carrier placement
- exact error-to-status mapping
- exact list filter serialization
- exact override field serialization

transport_risk_notes:
- do not expose external publish control state on viewer-facing endpoints
- do not leak internal storage or review notes
- do not flatten clip lineage and provenance into one ambiguous field
- do not widen publish source family through transport convenience

recommended_future_order:
1. lock request/response field casing
2. lock auth carrier placement
3. lock error/status mapping
4. lock list filter serialization
5. run transport review against K2 decision pack
