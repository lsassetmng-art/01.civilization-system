# ============================================================
# MEDICAL CORE RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: medical
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical runtime behavior of medical in CivilizationOS.

## runtime_scope
Runtime covers:
subject resolution,
condition-aware rendering,
intervention-state handling,
restricted-output handling,
historical and reference-mode handling,
and safe fallback behavior.

Runtime must convert architectural medical meaning
into deterministic execution behavior.

## required_behavior
- runtime subject resolution must be explicit
- runtime condition and intervention handling must be explicit
- current and historical medical rendering must remain distinct
- validation must gate privileged execution
- denial, restriction, and fallback behavior must remain explicit
- observability must remain sufficient for reconstruction

## current_view_state
Runtime-visible medical state must distinguish:
- active condition view
- active intervention view
- restricted medical view
- historical medical reference
- recovery or retired medical view

These categories must remain distinct.

## transition_rules
Runtime transitions proceed through:
- request intake
- subject resolution
- actor and scope validation
- state validation
- action execution or denial
- output rendering
- trace preservation

Transitions must remain attributable and reviewable.

## validation_rules
Runtime validation must confirm:
- subject identity basis
- actor scope
- action scope
- state eligibility
- disclosure boundary eligibility
- historical or reference mode where applicable

Privileged medical execution is forbidden before validation succeeds.

## decision_matrix
- if subject resolution fails, stop
- if actor scope is invalid, deny
- if medical state is invalid for requested action, deny or review
- if boundary meaning is ambiguous, escalate
- if historical mode is requested, preserve historical distinction
- if restricted mode applies, emit bounded restricted output

## output_model
Runtime outputs must distinguish:
- successful current medical result
- denied medical result
- restricted medical result
- review-required medical result
- historical medical reference result
- safe fallback result

These output classes must remain distinct.

## masking_rules
Masked or restricted medical outputs
must remain identifiable as masked or restricted.
They must not impersonate full medical truth.

## historical_rules
Historical medical rendering
must not overwrite current medical meaning.
Replay,
historical view,
and current execution
must remain distinguishable.

## failure_codes
- MEDICAL_RUNTIME_IDENTITY_ERROR
- MEDICAL_RUNTIME_SCOPE_ERROR
- MEDICAL_RUNTIME_STATE_ERROR
- MEDICAL_RUNTIME_BOUNDARY_ERROR
- MEDICAL_RUNTIME_VALIDATION_ERROR
- MEDICAL_RUNTIME_REVIEW_REQUIRED
- MEDICAL_RUNTIME_SAFE_FALLBACK

## observability
Runtime must emit enough signals to reconstruct:
- request intent
- resolved subject identity
- resolved actor scope
- validation outcome
- chosen runtime path
- output class
- failure or escalation details

## review_rules
Review is required when:
- subject identity basis is ambiguous
- actor scope is ambiguous
- state meaning is ambiguous
- boundary meaning is ambiguous
- historical/reference mode is ambiguous

## denial_rules
Denial is required when:
- actor scope is invalid
- requested action exceeds allowed scope
- medical state is not eligible
- output exceeds boundary scope

## example_scenarios
- valid current-state medical action
- denied medical request due to invalid actor scope
- restricted medical output due to boundary rule
- historical medical reference request
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
