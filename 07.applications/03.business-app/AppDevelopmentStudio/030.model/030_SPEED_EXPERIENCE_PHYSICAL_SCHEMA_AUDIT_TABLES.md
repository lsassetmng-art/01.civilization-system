# ============================================================
# SPEED EXPERIENCE PHYSICAL SCHEMA AUDIT TABLES
# ============================================================

status: canonical-draft
layer: model
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines audit and notification physical tables for speed-experience features.

audit_tables:

- table_name: ads_speed_audit_event
  purpose:
    Stores auditable speed-experience events.
  key_columns:
    - speed_audit_event_id
    - run_id
    - feature_name
    - event_type
    - actor_role
    - actor_id
    - device_type
    - mode_type
    - result_state
    - reason_code
    - reason_message
    - related_snapshot_id
    - related_governed_run_id
    - event_at

- table_name: ads_speed_notification_event
  purpose:
    Stores speed-experience notification events.
  key_columns:
    - speed_notification_event_id
    - run_id
    - notification_event_type
    - target_user_id
    - notification_title
    - notification_body
    - delivery_state
    - delivered_at
    - created_at
