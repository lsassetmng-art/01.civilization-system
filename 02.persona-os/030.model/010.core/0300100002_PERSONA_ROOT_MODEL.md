# ============================================================
# PERSONA ROOT MODEL
# ============================================================

status: canonical
layer: model
domain: core
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_root

purpose:
Defines the root canonical persona record.

core_fields:
persona_id
persona_code
persona_version
identity_ref
state_ref
memory_ref
growth_ref
lifecycle_ref
current_snapshot_ref
authority_scope
is_enabled
created_at
updated_at

rules:
Persona root is the canonical anchor record.
Persona root links major truth domains.
Persona root is not a draft-only structure.
