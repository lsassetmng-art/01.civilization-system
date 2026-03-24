# ============================================================
# BUSINESS CORRECTION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical business correction record model.

model_type:
- correction truth model

primary_key:
- business_correction_record_id

natural_key:
- correction_scope
- correction_ref
- correlation_id

fields:
- business_correction_record_id
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
Business correction truth belongs to BusinessOS event-integration domain.
