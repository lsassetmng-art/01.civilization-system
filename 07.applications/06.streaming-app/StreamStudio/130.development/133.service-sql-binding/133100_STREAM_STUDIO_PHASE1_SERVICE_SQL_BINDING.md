# ============================================================
# STREAM STUDIO PHASE1 SERVICE SQL BINDING
# ============================================================

status: implementation-freeze
system: StreamingOS
app: StreamStudio
phase: phase1
owner: Boss
prepared_by: Zero

purpose:
Bind the current service layer to additive SQL helpers without changing
the phase1 table truth boundary.

bound_routes:
- POST /api/stream-studio/projects
- GET /api/stream-studio/projects
- GET /api/stream-studio/projects/{creator_project_id}
- POST /api/stream-studio/publish-requests
- GET /api/stream-studio/publish-history

sql_helpers:
- streaming.v_stream_studio_project_list
- streaming.v_stream_studio_publish_history
- streaming.fn_stream_studio_create_project
- streaming.fn_stream_studio_register_publish_request

fixed_rule:
Service code may call repositories directly or SQL helpers through
Supabase, but router code must not own database logic.
