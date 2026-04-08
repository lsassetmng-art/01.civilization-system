# ============================================================
# CRIME CORE RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: crime
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical runtime behavior of crime in CivilizationOS.

## runtime_scope
Runtime covers:
subject resolution,
crime-state rendering,
investigation and disposition-aware handling,
restricted-output handling,
historical and reference-mode handling,
and safe fallback behavior.

Runtime must convert architectural crime meaning
into deterministic execution behavior.

## required_behavior
- runtime subject resolution must be explicit
- runtime allegation and disposition handling must be explicit
- current and historical crime rendering must remain distinct
- validation must gate privileged execution
- denial, restriction, and fallback behavior must remain explicit
- observability must remain sufficient for reconstruction

## current_view_state
Runtime-visible crime state must distinguish:
- alleged state view
- investigated state view
- review-required state view
- historical crime reference
- disposed or closed crime view

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
- boundary eligibility
- historical or reference mode where applicable

Privileged crime execution is forbidden before validation succeeds.

## decision_matrix
- if subject resolution fails, stop
- if actor scope is invalid, deny
- if crime state is invalid for requested action, deny or review
- if allegation, disposition, or boundary meaning is ambiguous, escalate
- if historical mode is requested, preserve historical distinction
- if restricted mode applies, emit bounded restricted output

## output_model
Runtime outputs must distinguish:
- successful current crime result
- denied crime result
- restricted crime result
- review-required crime result
- historical crime reference result
- safe fallback result

These output classes must remain distinct.

## masking_rules
Masked or restricted crime outputs
must remain identifiable as masked or restricted.
They must not impersonate full crime truth.

## historical_rules
Historical crime rendering
must not overwrite current crime meaning.
Replay,
historical view,
and current execution
must remain distinguishable.

## failure_codes
- CRIME_RUNTIME_IDENTITY_ERROR
- CRIME_RUNTIME_SCOPE_ERROR
- CRIME_RUNTIME_STATE_ERROR
- CRIME_RUNTIME_BOUNDARY_ERROR
- CRIME_RUNTIME_VALIDATION_ERROR
- CRIME_RUNTIME_REVIEW_REQUIRED
- CRIME_RUNTIME_SAFE_FALLBACK

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
- allegation or disposition meaning is ambiguous
- boundary meaning is ambiguous
- historical/reference mode is ambiguous

## denial_rules
Denial is required when:
- actor scope is invalid
- requested action exceeds allowed scope
- crime state is not eligible
- output exceeds boundary scope

## example_scenarios
- valid current-state crime action
- denied crime request due to invalid actor scope
- restricted crime output due to boundary rule
- historical crime reference request
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
