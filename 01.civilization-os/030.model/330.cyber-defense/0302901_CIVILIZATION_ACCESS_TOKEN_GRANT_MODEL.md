# ============================================================
# CIVILIZATION ACCESS TOKEN GRANT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical access token grant model.

model_type:
- session authorization truth model

primary_key:
- access_token_grant_id

natural_key:
- grant_scope
- grant_ref
- correlation_id

fields:
- access_token_grant_id
- grant_scope
- grant_ref
- correlation_id
- grant_status
- holder_scope
- target_interface_code
- granted_claims_summary
- source_state_version
- granted_at
- expires_at
- created_at
- updated_at

grant_status_enum:
- issued
- active
- suspended
- revoked
- expired
- archived

idempotency_rule:
grant_scope + grant_ref must suppress duplicate effective token grant issuance.

truth_boundary:
Access-token grant truth belongs to CivilizationOS cyber-defense domain.
