# ============================================================
# EXTERNAL INTEGRATION RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: integration
subdomain: external-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior for external integration.

scope:
Covers public-safe export,
restricted export with authority,
bounded external import as proposal or sync candidate,
and historical export labeling.

runtime_rules:
- Runtime must project data before external export.
- Restricted export requires authority basis.
- External import must be schema-bound.
- External import must not overwrite canonical truth without authority.
- Historical export must be explicitly labeled.

required_behavior:
- Deliver public-safe projected export.
- Deliver restricted export only where authorized.
- Accept proposal or sync candidate paths where valid.
- Reject invalid schema or unauthorized overwrite.

state_model:
external_integration_runtime_state:
- unresolved
- projected_public
- projected_restricted
- import_validated
- imported_as_proposal
- delivered
- blocked

validation_rules:
- projection scope is required.
- restricted export requires authority basis.
- import schema is required.
- historical export requires historical flag.
- overwrite without authority is prohibited.

transition_rules:
- unresolved -> projected_public
- unresolved -> projected_restricted
- unresolved -> import_validated
- import_validated -> imported_as_proposal
- projected state -> delivered
- invalid -> blocked

failure_codes:
- EXTERNAL_INT_RT_PROJECTION_SCOPE_MISSING
- EXTERNAL_INT_RT_AUTHORITY_REQUIRED
- EXTERNAL_INT_RT_SCHEMA_INVALID
- EXTERNAL_INT_RT_HISTORICAL_FLAG_REQUIRED
- EXTERNAL_INT_RT_OVERWRITE_DENIED

example_scenarios:
- A public-facing consumer gets summary-only projected export.
- An external payload is stored as proposal and blocked from canonical overwrite.
