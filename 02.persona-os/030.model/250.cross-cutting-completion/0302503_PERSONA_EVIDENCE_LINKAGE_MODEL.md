# ============================================================
# PERSONA EVIDENCE LINKAGE MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical evidence linkage model for PersonaOS.

model_type:
- cross-domain evidence truth model

primary_key:
- persona_evidence_linkage_id

natural_key:
- linkage_scope
- linkage_ref
- evidence_hash

fields:
- persona_evidence_linkage_id
- linkage_scope
- linkage_ref
- evidence_hash
- linkage_status
- source_record_ref
- target_record_ref
- source_state_version
- linked_at
- created_at
- updated_at

linkage_status_enum:
- recorded
- superseded
- invalidated
- archived

truth_boundary:
Persona evidence linkage truth belongs to PersonaOS cross-cutting-completion domain.
