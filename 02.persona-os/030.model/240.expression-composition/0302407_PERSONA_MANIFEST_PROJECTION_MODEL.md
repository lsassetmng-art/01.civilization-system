# ============================================================
# PERSONA MANIFEST PROJECTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona manifest projection model.

model_type:
- projection truth model

primary_key:
- persona_manifest_projection_id

natural_key:
- projection_scope
- projection_ref
- manifest_code

fields:
- persona_manifest_projection_id
- projection_scope
- projection_ref
- manifest_code
- projection_status
- target_scope
- projection_hash
- source_state_version
- projected_at
- created_at
- updated_at

projection_status_enum:
- pending
- built
- delivered
- failed
- archived

truth_boundary:
Manifest projection truth belongs to PersonaOS expression-composition domain.
