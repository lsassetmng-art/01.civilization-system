# ============================================================
# STREAMING COMPATIBILITY RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical compatibility record model for StreamingOS.

model_type:
- compatibility governance truth model

primary_key:
- streaming_compatibility_record_id

natural_key:
- compatibility_scope
- source_version_code
- target_version_code

fields:
- streaming_compatibility_record_id
- compatibility_scope
- source_version_code
- target_version_code
- compatibility_status
- compatibility_summary
- source_state_version
- recorded_at
- created_at
- updated_at

compatibility_status_enum:
- compatible
- limited
- incompatible
- superseded
- archived

truth_boundary:
Streaming compatibility truth belongs to StreamingOS cross-cutting-completion domain.
