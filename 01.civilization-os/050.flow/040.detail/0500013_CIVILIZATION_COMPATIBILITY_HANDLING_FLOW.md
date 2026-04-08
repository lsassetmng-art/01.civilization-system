# ============================================================
# CIVILIZATION COMPATIBILITY HANDLING FLOW
# ============================================================

status: canonical
layer: flow
domain: detail
scope: 0500013.civilization.compatibility.handling.flow
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the operational flow of CIVILIZATION COMPATIBILITY HANDLING FLOW
inside the 040.detail domain.

## trigger
The flow starts when a detail request,
sync request,
review request,
replay request,
or policy-controlled handling request is raised.

## preconditions
- subject identity is known
- actor role is known
- authority source is known
- target mode is known
- policy context is available

## validation_rules
- request shape must be valid
- actor must be allowed to request the path
- truth source must be resolvable
- replay and retry must be explicit modes
- output target must be compatible

## normal_flow
1. receive request
2. resolve subject and authority source
3. validate actor and mode
4. determine current/historical/replay path
5. apply projection or masking if needed
6. emit result or handoff

## exception_flow
If any validation,
authority,
compatibility,
or mode check fails,
the flow stops with fail-closed handling
and emits reviewable failure information.

## decision_matrix
- if request is current, use current path
- if request is historical, use historical path
- if request is replay, use replay path
- if support extension is required, invoke support flow after validation
- if policy blocks the path, deny the path

## outputs
- detail response
- replay-visible response
- masked response
- retry candidate
- audit trace

## failure_codes
- DETAIL_FLOW_INVALID_REQUEST
- DETAIL_FLOW_AUTHORITY_MISMATCH
- DETAIL_FLOW_POLICY_DENIED
- DETAIL_FLOW_REPLAY_NOT_ALLOWED
- DETAIL_FLOW_COMPATIBILITY_FAILED

## review_checklist
- trigger is explicit
- validation is explicit
- normal and exception paths are explicit
- outputs are explicit
- failure behavior is explicit

## state_model
The flow must preserve the distinction between
current detail handling,
historical detail handling,
replay handling,
and support-extension handling.
A flow that cannot distinguish these states
must not proceed.

## transition_rules
A transition across flow states must preserve
authority origin,
validation outcome,
and compatibility interpretation.
Retry and replay transitions must remain explicit
and must not masquerade as ordinary success flow.

## actor_matrix
- requester initiates demand
- validator checks request shape
- authority guard verifies source legitimacy
- support flow executes auxiliary path when allowed
- reviewer inspects blocked or escalated outcomes

## review_notes
This flow is complete only when
its success path,
failure path,
escalation path,
and replay-aware path
are all reviewable without inference.
