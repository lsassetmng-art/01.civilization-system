# ============================================================
# PERSONA COMPOSITION VALIDATION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona composition validation record model.

model_type:
- composition validation truth model

primary_key:
- persona_composition_validation_record_id

natural_key:
- validation_scope
- validation_ref
- composition_code

fields:
- persona_composition_validation_record_id
- validation_scope
- validation_ref
- composition_code
- validation_status
- validation_result
- source_state_version
- validated_at
- created_at
- updated_at

validation_status_enum:
- pending
- passed
- failed
- superseded
- archived

truth_boundary:
Composition validation truth belongs to PersonaOS expression-composition domain.
