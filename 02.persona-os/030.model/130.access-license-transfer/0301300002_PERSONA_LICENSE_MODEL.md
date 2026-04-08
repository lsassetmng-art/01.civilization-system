# ============================================================
# PERSONA LICENSE MODEL
# ============================================================

status: canonical
layer: model
domain: access-license-transfer
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_license

core_fields:
persona_license_id
snapshot_id
license_status
license_scope
usage_constraints
issued_at
expires_at
created_at
updated_at

rules:
License authority belongs to PersonaOS.
Usage permission must remain explicit.
