# ============================================================
# ASSET CORE RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: asset
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical runtime behavior of asset in CivilizationOS.

## runtime_scope
Runtime covers:
asset identity resolution,
holding and state-aware rendering,
valuation-aware display,
restricted-output handling,
historical and reference-mode handling,
and safe fallback behavior.

Runtime must convert architectural asset meaning
into deterministic execution behavior.

## required_behavior
- runtime asset identity resolution must be explicit
- runtime state handling must be explicit
- current and historical asset rendering must remain distinct
- validation must gate privileged execution
- denial, restriction, and fallback behavior must remain explicit
- observability must remain sufficient for reconstruction

## current_view_state
Runtime-visible asset state must distinguish:
- active asset view
- restricted asset view
- review-required asset view
- historical asset reference
- retired or disposed asset view

These categories must remain distinct.

## transition_rules
Runtime transitions proceed through:
- request intake
- asset identity resolution
- holder and scope validation
- state validation
- action execution or denial
- output rendering
- trace preservation

Transitions must remain attributable and reviewable.

## validation_rules
Runtime validation must confirm:
- asset identity basis
- holder or controller scope
- action scope
- state eligibility
- boundary eligibility
- historical or reference mode where applicable

Privileged asset execution is forbidden before validation succeeds.

## decision_matrix
- if asset identity resolution fails, stop
- if holder scope is invalid, deny
- if asset state is invalid for requested action, deny or review
- if boundary or valuation meaning is ambiguous, escalate
- if historical mode is requested, preserve historical distinction
- if restricted mode applies, emit bounded restricted output

## output_model
Runtime outputs must distinguish:
- successful current asset result
- denied asset result
- restricted asset result
- review-required asset result
- historical asset reference result
- safe fallback result

These output classes must remain distinct.

## masking_rules
Masked or restricted asset outputs
must remain identifiable as masked or restricted.
They must not impersonate full asset truth.

## historical_rules
Historical asset rendering
must not overwrite current asset meaning.
Replay,
historical view,
and current execution
must remain distinguishable.

## failure_codes
- ASSET_RUNTIME_IDENTITY_ERROR
- ASSET_RUNTIME_SCOPE_ERROR
- ASSET_RUNTIME_STATE_ERROR
- ASSET_RUNTIME_BOUNDARY_ERROR
- ASSET_RUNTIME_VALIDATION_ERROR
- ASSET_RUNTIME_REVIEW_REQUIRED
- ASSET_RUNTIME_SAFE_FALLBACK

## observability
Runtime must emit enough signals to reconstruct:
- request intent
- resolved asset identity
- resolved holder scope
- validation outcome
- chosen runtime path
- output class
- failure or escalation details

## review_rules
Review is required when:
- asset identity basis is ambiguous
- holder scope is ambiguous
- state meaning is ambiguous
- boundary meaning is ambiguous
- historical/reference mode is ambiguous

## denial_rules
Denial is required when:
- holder scope is invalid
- requested action exceeds allowed scope
- asset state is not eligible
- output exceeds boundary scope

## example_scenarios
- valid current-state asset action
- denied asset request due to invalid holder scope
- restricted asset output due to boundary rule
- historical asset reference request
- safe fallback due to invalid state

## review_checklist
- runtime scope is explicit
- state handling is explicit
- validation rules are explicit
- decision matrix is explicit
- output model is explicit
- masking rules are explicit
- historical rules are explicit
- failure codes are explicit
- observability is explicit
- fallback behavior is explicit
