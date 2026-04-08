# ============================================================
# TRANSPORT CORE RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: transport
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical runtime behavior of transport in CivilizationOS.

## runtime_scope
Runtime covers:
transport identity resolution,
route-aware execution,
movement-state rendering,
restricted-output handling,
historical and reference-mode handling,
and safe fallback behavior.

Runtime must convert architectural transport meaning
into deterministic execution behavior.

## required_behavior
- runtime transport identity resolution must be explicit
- runtime route and movement handling must be explicit
- current and historical transport rendering must remain distinct
- validation must gate privileged execution
- denial, restriction, and fallback behavior must remain explicit
- observability must remain sufficient for reconstruction

## current_view_state
Runtime-visible transport state must distinguish:
- active transport view
- delayed or restricted transport view
- review-required transport view
- historical transport reference
- completed or cancelled transport view

These categories must remain distinct.

## transition_rules
Runtime transitions proceed through:
- request intake
- transport identity resolution
- actor and route validation
- state validation
- action execution or denial
- output rendering
- trace preservation

Transitions must remain attributable and reviewable.

## validation_rules
Runtime validation must confirm:
- transport identity basis
- actor scope
- action scope
- route eligibility
- carried subject eligibility
- historical or reference mode where applicable

Privileged transport execution is forbidden before validation succeeds.

## decision_matrix
- if transport identity resolution fails, stop
- if actor scope is invalid, deny
- if transport state is invalid for requested action, deny or review
- if route or boundary meaning is ambiguous, escalate
- if historical mode is requested, preserve historical distinction
- if restricted mode applies, emit bounded restricted output

## output_model
Runtime outputs must distinguish:
- successful current transport result
- denied transport result
- restricted transport result
- review-required transport result
- historical transport reference result
- safe fallback result

These output classes must remain distinct.

## masking_rules
Masked or restricted transport outputs
must remain identifiable as masked or restricted.
They must not impersonate full transport truth.

## historical_rules
Historical transport rendering
must not overwrite current transport meaning.
Replay,
historical view,
and current execution
must remain distinguishable.

## failure_codes
- TRANSPORT_RUNTIME_IDENTITY_ERROR
- TRANSPORT_RUNTIME_SCOPE_ERROR
- TRANSPORT_RUNTIME_STATE_ERROR
- TRANSPORT_RUNTIME_BOUNDARY_ERROR
- TRANSPORT_RUNTIME_VALIDATION_ERROR
- TRANSPORT_RUNTIME_REVIEW_REQUIRED
- TRANSPORT_RUNTIME_SAFE_FALLBACK

## observability
Runtime must emit enough signals to reconstruct:
- request intent
- resolved transport identity
- resolved actor and route scope
- validation outcome
- chosen runtime path
- output class
- failure or escalation details

## review_rules
Review is required when:
- transport identity basis is ambiguous
- actor scope is ambiguous
- route meaning is ambiguous
- boundary meaning is ambiguous
- historical/reference mode is ambiguous

## denial_rules
Denial is required when:
- actor scope is invalid
- requested action exceeds allowed scope
- transport state is not eligible
- output exceeds boundary scope

## example_scenarios
- valid current-state transport action
- denied transport request due to invalid actor scope
- restricted transport output due to boundary rule
- historical transport reference request
- safe fallback due to invalid state

## review_checklist
- runtime scope is explicit
- route and state handling are explicit
- validation rules are explicit
- decision matrix is explicit
- output model is explicit
- masking rules are explicit
- historical rules are explicit
- failure codes are explicit
- observability is explicit
- fallback behavior is explicit
