# ============================================================
# INTEGRATION CORE FLOW
# ============================================================

status: canonical
layer: flow
domain: integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the core process flow for integration handling.

scope:
Covers contract request,
contract resolution,
scope validation,
authority validation,
projection or import handling,
proposal routing,
delivery, rejection, and trace emission.

required_behavior:
- Bind typed contract context.
- Resolve active contract.
- Validate source and target scope.
- Validate authority basis where required.
- Route to export, proposal, bounded sync, or rejection path.
- Emit trace for sensitive actions.

flow_state_model:
integration_flow_state:
- requested
- contract_bound
- contract_resolved
- scope_checked
- authority_checked
- projected
- proposal_routed
- delivered
- blocked
- historical_delivered

export_sequence:
1. receive export request
2. bind contract context
3. resolve active contract
4. validate source/target scope
5. validate projection scope and authority
6. project allowed fields
7. emit trace
8. deliver export

import_sequence:
1. receive import request
2. bind contract context
3. validate schema and source authority
4. detect overwrite attempt
5. route to bounded sync, proposal path, or rejection
6. emit trace
7. deliver acceptance result or rejection

decision_matrix:
- valid export + allowed scope -> projected then delivered
- valid import + proposal-only -> proposal_routed
- overwrite attempt + no authority -> blocked
- historical delivery request + valid history path -> historical_delivered
- sensitive transfer + no trace path -> blocked

failure_codes:
- INTEGRATION_FLOW_CONTRACT_MISSING
- INTEGRATION_FLOW_SCOPE_INVALID
- INTEGRATION_FLOW_AUTHORITY_REQUIRED
- INTEGRATION_FLOW_OVERWRITE_DENIED
- INTEGRATION_FLOW_TRACE_REQUIRED
- INTEGRATION_FLOW_HISTORY_PATH_INVALID

example_scenarios:
- A public-safe export is projected and delivered.
- A third-party import becomes proposal-only because canonical overwrite is not allowed.
