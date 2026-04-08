# ============================================================
# PERSONA RUNTIME SESSION MODEL
# ============================================================

status: canonical
layer: model
domain: runtime-hosting
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_runtime_session

core_fields:
persona_runtime_session_id
persona_id
surface_code
host_system_code
session_status
manifest_projection_ref
container_binding_state
last_render_at
last_error_code
created_at
updated_at

rules:
Runtime session is execution state.
Runtime session is not persona truth.
