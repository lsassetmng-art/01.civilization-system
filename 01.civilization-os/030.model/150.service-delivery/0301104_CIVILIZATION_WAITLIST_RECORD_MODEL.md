# ============================================================
# CIVILIZATION WAITLIST RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical waitlist record model.

model_type:
- allocation backlog model

primary_key:
- waitlist_record_id

natural_key:
- waitlist_scope
- waitlist_ref
- source_request_id

fields:
- waitlist_record_id
- waitlist_scope
- waitlist_ref
- source_request_id
- waitlist_status
- wait_priority
- expected_release_window
- source_state_version
- correlation_id
- enqueued_at
- released_at
- created_at
- updated_at

waitlist_status_enum:
- queued
- active
- released
- expired
- cancelled
- archived

truth_boundary:
Waitlist truth belongs to CivilizationOS service backlog domain.
