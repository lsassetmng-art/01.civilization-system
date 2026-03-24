# ============================================================
# LIFE CORRECTION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical life correction record model.

model_type:
- correction truth model

primary_key:
- life_correction_record_id

natural_key:
- correction_scope
- correction_ref
- correlation_id

fields:
- life_correction_record_id
- correction_scope
- correction_ref
- correlation_id
- correction_status
- target_record_ref
- correction_summary
- source_state_version
- corrected_at
- created_at
- updated_at

correction_status_enum:
- recorded
- applied
- reversed
- invalidated
- archived

truth_boundary:
Life correction truth belongs to LifeOS life-operations domain.
