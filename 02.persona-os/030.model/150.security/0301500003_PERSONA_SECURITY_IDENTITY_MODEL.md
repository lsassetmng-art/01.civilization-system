# ============================================================
# PERSONA SECURITY IDENTITY MODEL
# ============================================================

status: canonical
layer: model
domain: security
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_security_identity

purpose:
Defines the canonical security identity
associated with a persona for authentication
and authorization-bound handling.

core_fields:
persona_security_identity_id
persona_id
identity_scope
identity_status
authentication_binding
authorization_binding
created_at
updated_at

rules:
Security identity belongs to PersonaOS.
Security identity must remain explicit and auditable.
Security identity does not by itself grant unrestricted access.
