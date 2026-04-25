# ============================================================
# STREAM STUDIO PHASE1 MODULE BOUNDARY FIXED
# ============================================================

status: implementation-freeze
system: StreamingOS
app: StreamStudio
phase: phase1
owner: Boss
prepared_by: Zero

purpose:
Fix the internal implementation layering for the first executable
StreamStudio backend pass.

dependency_direction:
router -> service -> validator -> repository -> database

rules:
- router parses request, path params, and envelope only
- service owns orchestration and transaction-level intent
- validator owns input checks and state-precondition checks
- repository owns all direct Supabase / database access
- repository must not return raw Supabase responses to router
- router never talks to database directly
- validator never writes to database directly
- additive only

phase1_db_backed_families:
- project
- upload
- video_draft
- publish_setting
- publish_request

phase1_route_groups:
- projectRoutes
- uploadRoutes
- draftRoutes
- publishRoutes

fixed_tables:
- streaming.creator_project
- streaming.creator_upload_job
- streaming.creator_video_draft
- streaming.creator_publish_setting
- streaming.creator_publish_request

note:
This bundle is intentionally aligned to the uploaded exact payload bundle
and current phase1 SQL starter. It does not expand marketplace, membership,
or settlement mutations in this pass.
