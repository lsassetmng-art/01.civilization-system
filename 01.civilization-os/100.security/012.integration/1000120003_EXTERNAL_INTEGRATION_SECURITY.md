# ============================================================
# EXTERNAL INTEGRATION SECURITY
# ============================================================

status: canonical
layer: security
domain: integration
subdomain: external-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines security rules for external integration contracts.

scope:
Covers public export, restricted export,
proposal-only import, bounded sync,
and historical external contract access.

security_focus:
- projection-safe public export
- protection of restricted raw payloads
- prevention of authorityless overwrite
- replay/history access control for external traces

actor_matrix:
- public_external_consumer -> public projection only
- partner_external_consumer -> restricted export only where authorized
- restricted_integration_operator -> external bounded sync as authorized
- auditor -> historical external traces where authorized

decision_table:
- public_external_consumer + public projection -> allow if projection-safe
- public_external_consumer + restricted export -> block
- partner_external_consumer + restricted export -> allow only with explicit authority
- restricted_integration_operator + bounded sync -> allow only with authority
- any external actor + canonical overwrite attempt -> block
- auditor + historical external trace -> allow only via audit/history path

validation_rules:
- projection_scope is required.
- restricted export requires authority basis.
- proposal-only import must not enter canonical-write path.
- historical trace access must be distinct and authorized.
- public export must not reveal restricted raw payload.

failure_codes:
- EXTERNAL_INT_SEC_PROJECTION_SCOPE_MISSING
- EXTERNAL_INT_SEC_PUBLIC_EXPORT_DENIED
- EXTERNAL_INT_SEC_RESTRICTED_EXPORT_DENIED
- EXTERNAL_INT_SEC_BOUNDED_SYNC_DENIED
- EXTERNAL_INT_SEC_OVERWRITE_DENIED
- EXTERNAL_INT_SEC_HISTORY_ACCESS_DENIED

example_scenarios:
- A public endpoint may expose only projected summary fields.
- A partner integration may receive restricted export only after explicit authorization is validated.
