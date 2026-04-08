# ============================================================
# PERSONA CREDENTIAL MODEL
# ============================================================

status: canonical
layer: model
domain: security
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_credential

purpose:
Defines the canonical credential model
for persona authentication mechanisms.

core_fields:
persona_credential_id
persona_id
credential_type
credential_status
credential_reference
issued_at
expires_at
created_at
updated_at

credential_type_examples:
key
token
certificate

rules:
Credential handling must remain policy-bound.
Credentials must remain auditable and revocable.
