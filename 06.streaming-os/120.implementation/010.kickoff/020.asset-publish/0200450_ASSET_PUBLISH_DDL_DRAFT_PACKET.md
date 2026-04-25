# ============================================================
# ASSET PUBLISH DDL DRAFT PACKET
# ============================================================

status: canonical-ddl-draft-packet
layer: implementation
domain: asset-publish
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
This packet defines the DDL draft review body for K2 asset-publish.

packet_state:
- draft_only
- pending_sato_db_review
- no_sql_executed
- not_approved_for_apply

included_documents:
- 0200460_ASSET_PUBLISH_BASE_TABLE_DDL_DRAFT_REVIEW_MEMO.md
- 0200470_ASSET_PUBLISH_INDEX_DDL_DRAFT_REVIEW_MEMO.md
- 0200480_ASSET_PUBLISH_PROJECTION_POLICY_SQL_DRAFT_REVIEW_MEMO.md

draft_scope:
- archive_assets
- clip_assets
- external_publish_jobs

review_intent:
- confirm type choices
- confirm lineage/provenance constraint strategy
- confirm minimal index strategy
- confirm public asset vs control-plane projection split
