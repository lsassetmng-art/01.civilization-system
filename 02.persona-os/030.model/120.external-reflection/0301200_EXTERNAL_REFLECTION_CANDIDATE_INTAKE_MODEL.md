# ============================================================
# EXTERNAL REFLECTION CANDIDATE INTAKE MODEL
# ============================================================

status: draft-for-canonical-update
system: persona-os
layer: model
domain: external-reflection
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
Formal intake record for externally-originated semantic proposals entering PersonaOS.

core_fields:
- intake identity
- source system
- source candidate identity
- target Persona identity
- transformed proposal summary
- evidence summary
- intake status
- created_at
- updated_at

core_rules:
- intake is not review
- intake is not canonical update
- source linkage must be preserved
