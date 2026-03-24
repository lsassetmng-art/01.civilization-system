# ============================================================
# LIFE FOLLOW UP RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical life follow-up record model.

model_type:
- follow-up truth model

primary_key:
- life_follow_up_record_id

natural_key:
- follow_up_scope
- follow_up_ref
- correlation_id

fields:
- life_follow_up_record_id
- follow_up_scope
- follow_up_ref
- correlation_id
- follow_up_status
- owner_scope
- persona_id
- follow_up_summary
- source_state_version
- scheduled_at
- created_at
- updated_at

follow_up_status_enum:
- planned
- active
- completed
- skipped
- archived

truth_boundary:
Life follow-up truth belongs to LifeOS life-operations domain.
