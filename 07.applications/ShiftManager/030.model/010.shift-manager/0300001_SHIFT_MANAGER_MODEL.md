# ============================================================
# SHIFT MANAGER MODEL
# ============================================================

status: canonical
layer: model
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

model: shift_schedule
fields:
- schedule_id
- company_id
- unit_id
- period_type
- period_start
- period_end
- status
- version_no
- created_by
- updated_by
- created_at
- updated_at

model: shift_assignment
fields:
- assignment_id
- schedule_id
- person_id
- role_code
- shift_date
- start_time
- end_time
- place_id
- memo
- status

model: shift_publication
fields:
- publication_id
- schedule_id
- published_version_no
- published_at
- published_by
- publication_status
- realtime_reflect_flag

model: shift_share_rule
fields:
- share_rule_id
- company_id
- scope_type
- scope_target_id
- visibility_level
- active_flag
- created_at
- updated_at

scope_type_examples:
- person
- team
- department
- admin

model: shift_view_scope
fields:
- view_scope_id
- person_id
- visible_schedule_id
- visible_assignment_id
- visibility_reason
- evaluated_at

model: shift_notification
fields:
- notification_id
- notification_type
- target_person_id
- related_schedule_id
- related_publication_id
- queued_at
- delivered_at
- status

model: erp_linkage_state
fields:
- linkage_id
- schedule_id
- export_status
- export_requested_at
- exported_at
- last_error
