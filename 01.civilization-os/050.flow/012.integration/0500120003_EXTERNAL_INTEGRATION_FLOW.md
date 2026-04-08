# ============================================================
# EXTERNAL INTEGRATION FLOW
# ============================================================

status: canonical
layer: flow
domain: integration
subdomain: external-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines process flow for external integration handling.

scope:
Covers public export,
restricted export,
external proposal import,
sync candidate handling,
and historical export labeling.

required_behavior:
- Bind external contract context.
- Validate projection scope.
- Validate authority for restricted export.
- Validate schema for import.
- Route to proposal, sync, export, or rejection path.

flow_state_model:
external_integration_flow_state:
- requested
- contract_bound
- projection_checked
- authority_checked
- schema_checked
- projected
- proposal_routed
- delivered
- blocked

public_export_sequence:
1. receive public export request
2. bind contract context
3. validate projection scope
4. project public-safe output
5. deliver export

external_import_sequence:
1. receive external import
2. bind contract context
3. validate schema
4. detect overwrite attempt
5. route to proposal/sync or block
6. deliver acceptance result or rejection

failure_codes:
- EXTERNAL_INT_FLOW_PROJECTION_SCOPE_MISSING
- EXTERNAL_INT_FLOW_AUTHORITY_REQUIRED
- EXTERNAL_INT_FLOW_SCHEMA_INVALID
- EXTERNAL_INT_FLOW_HISTORICAL_FLAG_REQUIRED
- EXTERNAL_INT_FLOW_OVERWRITE_DENIED

example_scenarios:
- A public summary export is delivered safely.
- A restricted export is blocked because authority basis is missing.

validation_rules:
- canonical scope binding is required
- invalid or ambiguous state must block delivery
- live and historical paths must remain distinct where applicable

decision_matrix:
- valid request + valid scope + valid path -> deliver
- invalid scope or invalid state -> block
- historical request without history path -> block
- restricted path without authority where relevant -> block
