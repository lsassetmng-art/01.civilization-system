# ============================================================
# APP DEVELOPMENT STUDIO WS-DB POST APPLY CHECKLIST
# ============================================================

status: canonical-draft
layer: implementation
system: applications
application: App Development Studio
workstream: WS-DB
owner: Boss
prepared_by: Zero

purpose:
Defines the checklist to verify schema state after SQL apply.

check_targets:
- ads_speed_quick_start_run exists
- ads_speed_preview_result exists
- ads_speed_starter_pack_run exists
- ads_speed_mode_promotion exists
- ads_speed_audit_event exists
- ads_speed_notification_event exists

column_targets:
- mode_type exists where required
- state exists where required
- device_type exists where required
- jsonb payload columns exist where defined
- created_at exists where required
- governed linkage columns exist where defined

index_targets:
- account lookup index exists
- run id lookup indexes exist
- target governed lookup index exists
- event_at history index exists
- delivery_state index exists

completion_condition:
All required tables, columns, and indexes are confirmed present.
