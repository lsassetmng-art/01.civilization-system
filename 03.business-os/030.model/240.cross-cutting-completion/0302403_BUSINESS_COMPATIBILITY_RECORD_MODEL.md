# ============================================================
# BUSINESS COMPATIBILITY RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical compatibility record model for BusinessOS.

model_type:
- compatibility governance truth model

primary_key:
- business_compatibility_record_id

natural_key:
- compatibility_scope
- source_version_code
- target_version_code

fields:
- business_compatibility_record_id
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
Business compatibility truth belongs to BusinessOS cross-cutting-completion domain.
