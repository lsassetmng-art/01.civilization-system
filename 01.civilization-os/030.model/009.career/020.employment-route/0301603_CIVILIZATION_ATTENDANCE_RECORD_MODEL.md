# ============================================================
# CIVILIZATION ATTENDANCE RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical attendance record model.

model_type:
- participation operations model

primary_key:
- attendance_record_id

natural_key:
- attendance_scope
- attendance_ref

fields:
- attendance_record_id
- attendance_scope
- attendance_ref
- attendance_status
- learner_scope
- session_scope
- source_state_version
- correlation_id
- recorded_at
- created_at
- updated_at

attendance_status_enum:
- present
- absent
- excused
- invalidated
- archived

truth_boundary:
Attendance truth belongs to CivilizationOS human-capital operations.
