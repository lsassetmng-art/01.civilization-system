# ============================================================
# K2 SCREEN TO ENDPOINT MAPPING
# ============================================================

status: exact-mapping
scope: asset-and-publish
prepared_by: Zero
owner: Boss

purpose:
Maps K2-level screens and UI entry points to archive, clip,
and external-publish canonical endpoints.

screen_mapping:

creator_video_list:
- list_archive_assets
- get_archive_asset_detail

creator_archive_list:
- list_archive_assets
- get_archive_asset_detail

creator_clip_list:
- list_clip_assets
- get_clip_asset_detail

creator_stream_list:
- get_archive_asset_detail
- get_clip_asset_detail

creator_upload_review_status:
- get_archive_asset_detail
- get_clip_asset_detail

creator_publish_request_confirm:
- create_external_publish_job
- get_external_publish_job_detail

creator_channel_management:
- list_archive_assets
- list_clip_assets
- list_external_publish_jobs

viewer_channel_page:
- list_archive_assets
- list_clip_assets

viewer_creator_page:
- list_archive_assets
- list_clip_assets

viewer_archive_watch:
- get_archive_asset_detail

viewer_clip_watch:
- get_clip_asset_detail

mapping_rules:
- viewer watch screens must not expose publish job objects
- publish job detail is creator/control-plane facing only
- archive and clip viewer reads must use policy-safe projections
- list screens must preserve archive vs clip identity separation
- external publish remains a creator/integration boundary, not a viewer-facing boundary

out_of_scope_note:
- upload_preparation_record exact mapping is K3
- playlist / queue / history exact mapping is K3
- notification / review alert mapping is K4
