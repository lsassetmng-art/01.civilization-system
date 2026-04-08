# ============================================================
# PERSONA SECURITY STATE MODEL
# ============================================================

status: canonical
layer: model
domain: security
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_security_state

purpose:
Defines the canonical security state record for a persona.

core_fields:
persona_security_state_id
persona_id
security_status
approval_gate_status
export_gate_status
hosting_security_status
last_security_review_at
created_at
updated_at

rules:
Security state belongs to PersonaOS.
Security state must remain explicit and auditable.
Security state does not transfer authority outside PersonaOS.
