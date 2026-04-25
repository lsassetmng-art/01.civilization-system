# ============================================================
# K4 NOTIFICATION TABLE-COLUMN EXACTNESS
# ============================================================

status: exact-table-column
domain: notification
prepared_by: Zero
owner: Boss

tables:
- platform_event_records
- notification_records
- notification_delivery_states

platform_event_records_required_columns:
- platform_event_record_id
- event_type
- created_at
- updated_at

notification_records_required_columns:
- notification_record_id
- recipient_principal_id
- notification_type
- title
- read_flag
- created_at
- updated_at

notification_delivery_states_required_columns:
- notification_delivery_state_id
- notification_record_id
- delivery_state
- updated_at

recommended_constraints:
- fk(notification_record_id -> notification_records.notification_record_id)
- check(read_flag in allowed boolean set)
- check(delivery_state in allowed set)
- check(event_type in allowed set)
- check(notification_type in allowed set)

recommended_indexes:
- recipient_principal_id index for notification_records
- read_flag index for notification_records
- created_at index for notification_records
- notification_record_id index for notification_delivery_states
- delivery_state index for notification_delivery_states
- event_type index for platform_event_records

semantic_notes:
- platform event record is system/event root object
- notification record is recipient-facing projection/control object
- delivery state is runtime delivery object, not recipient-facing semantic object
- read_flag belongs to notification record, not delivery state

open_for_sql_precision_only:
- exact SQL type names
- exact preview/detail field split
- exact default clauses
- exact partial index conditions
