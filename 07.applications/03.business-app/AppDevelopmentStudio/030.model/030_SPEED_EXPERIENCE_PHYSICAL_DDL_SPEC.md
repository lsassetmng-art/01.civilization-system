# ============================================================
# SPEED EXPERIENCE PHYSICAL DDL SPEC
# ============================================================

status: canonical-draft
layer: model
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines physical DDL specification for speed-experience persistence.

ddl_targets:
- ads_speed_quick_start_run
- ads_speed_preview_result
- ads_speed_starter_pack_run
- ads_speed_mode_promotion
- ads_speed_audit_event
- ads_speed_notification_event

ddl_principles:
- UUID primary keys
- created_at required on all tables
- append-oriented audit/notification records
- governed linkage must remain queryable
- JSON payloads remain explicitly separated from summary columns

key_index_policy:
- quick_start_run_id indexed
- account_id indexed where user-scoped lookup is needed
- run_id indexed across dependent tables
- target_governed_run_id indexed
- event_at indexed for audit history
- delivery_state indexed for notification operations
