# ============================================================
# LIFE COMPATIBILITY RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical compatibility record model for LifeOS.

model_type:
- compatibility governance truth model

primary_key:
- life_compatibility_record_id

natural_key:
- compatibility_scope
- source_version_code
- target_version_code

fields:
- life_compatibility_record_id
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
Life compatibility truth belongs to LifeOS cross-cutting-completion domain.
