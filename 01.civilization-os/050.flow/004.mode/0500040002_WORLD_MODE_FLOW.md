# ============================================================
# WORLD MODE FLOW
# ============================================================

status: canonical
layer: flow
domain: mode
subdomain: world-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines process flow for world-mode handling.

scope:
Covers request, resolution, conflict handling,
public-safe delivery, internal delivery,
and historical inspection of world-facing modes.

required_behavior:
- Bind world scope.
- Resolve current world mode.
- Separate public-safe and internal delivery.
- Support historical world-mode inspection.
- Block unresolved emergency or maintenance conflicts.

flow_state_model:
world_mode_flow_state:
- requested
- world_bound
- candidates_resolved
- primary_checked
- delivered_public
- delivered_internal
- historical_delivered
- blocked

current_world_mode_sequence:
1. receive world-mode request
2. bind world_ref
3. resolve active world-mode candidates
4. check primary conflict
5. select effective world mode
6. produce public-safe or internal output
7. deliver result

historical_world_mode_sequence:
1. receive historical world-mode request
2. bind world_ref
3. resolve historical candidates
4. validate history path
5. deliver historical world-mode output

failure_codes:
- WORLD_MODE_FLOW_WORLD_REF_MISSING
- WORLD_MODE_FLOW_PRIMARY_CONFLICT
- WORLD_MODE_FLOW_PUBLIC_SCOPE_DENIED
- WORLD_MODE_FLOW_HISTORY_PATH_INVALID

example_scenarios:
- Public users receive event-emphasis summary.
- Internal operators receive maintenance-control detail for the same world scope.

validation_rules:
- canonical scope binding is required
- invalid or ambiguous state must block delivery
- live and historical paths must remain distinct where applicable

decision_matrix:
- valid request + valid scope + valid path -> deliver
- invalid scope or invalid state -> block
- historical request without history path -> block
- restricted path without authority where relevant -> block
