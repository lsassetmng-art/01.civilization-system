# ============================================================
# MAP CORE RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: map
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical runtime behavior of map in CivilizationOS.

## runtime_scope
Runtime covers:
spatial-basis resolution,
projection-aware rendering,
route and adjacency-aware handling,
restricted-output handling,
historical and reference-mode handling,
and safe fallback behavior.

Runtime must convert architectural map meaning
into deterministic execution behavior.

## required_behavior
- runtime spatial-basis resolution must be explicit
- runtime authoritative and projected handling must be explicit
- current and historical map rendering must remain distinct
- validation must gate privileged execution
- denial, restriction, and fallback behavior must remain explicit
- observability must remain sufficient for reconstruction

## current_view_state
Runtime-visible map state must distinguish:
- current authoritative view
- projected map view
- restricted map view
- historical map reference
- archived map view

These categories must remain distinct.

## transition_rules
Runtime transitions proceed through:
- request intake
- spatial-basis resolution
- route and boundary validation
- state validation
- output rendering or denial
- trace preservation

Transitions must remain attributable and reviewable.

## validation_rules
Runtime validation must confirm:
- spatial basis
- route or adjacency scope
- boundary eligibility
- historical or reference mode where applicable

Map-sensitive execution is forbidden before validation succeeds.

## decision_matrix
- if spatial basis resolution fails, stop
- if spatial scope is invalid, deny
- if route, adjacency, projection, or boundary meaning is ambiguous, escalate
- if historical mode is requested, preserve historical distinction
- if restricted mode applies, emit bounded restricted output

## output_model
Runtime outputs must distinguish:
- current authoritative map result
- denied map result
- restricted map result
- review-required map result
- historical map reference result
- safe fallback result

These output classes must remain distinct.

## masking_rules
Masked or restricted map outputs
must remain identifiable as masked or restricted.
They must not impersonate authoritative spatial truth.

## historical_rules
Historical map rendering
must not overwrite current map meaning.
Replay,
historical view,
and current execution
must remain distinguishable.

## failure_codes
- MAP_RUNTIME_IDENTITY_ERROR
- MAP_RUNTIME_SCOPE_ERROR
- MAP_RUNTIME_STATE_ERROR
- MAP_RUNTIME_BOUNDARY_ERROR
- MAP_RUNTIME_VALIDATION_ERROR
- MAP_RUNTIME_REVIEW_REQUIRED
- MAP_RUNTIME_SAFE_FALLBACK

## observability
Runtime must emit enough signals to reconstruct:
- request intent
- resolved spatial basis
- resolved route or adjacency scope
- validation outcome
- chosen runtime path
- output class
- failure or escalation details

## review_rules
Review is required when:
- spatial basis is ambiguous
- route or adjacency meaning is ambiguous
- projection meaning is ambiguous
- boundary meaning is ambiguous
- historical/reference mode is ambiguous

## denial_rules
Denial is required when:
- spatial scope is invalid
- requested map output exceeds allowed scope
- output exceeds boundary scope

## example_scenarios
- valid current map reference
- denied request due to invalid spatial scope
- restricted projected map output
- historical map reference request
- safe fallback due to invalid state

## review_checklist
- runtime scope is explicit
- map-mode handling is explicit
- validation rules are explicit
- decision matrix is explicit
- output model is explicit
- historical rules are explicit
- failure codes are explicit
- observability is explicit
- fallback behavior is explicit
