# ============================================================
# AI CORE RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: ai
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical runtime behavior of ai in CivilizationOS.

## runtime_scope
Runtime covers:
AI identity resolution,
capability-aware execution,
restricted-output handling,
historical and reference-mode handling,
controller-aware validation,
and safe fallback behavior.

Runtime must convert architectural AI meaning
into deterministic execution behavior.

## required_behavior
- runtime AI identity resolution must be explicit
- runtime capability handling must be explicit
- current and historical AI rendering must remain distinct
- controller validation must gate privileged execution
- denial, restriction, and fallback behavior must remain explicit
- observability must remain sufficient for reconstruction

## current_view_state
Runtime-visible AI state must distinguish:
- active AI view
- restricted AI view
- review-required AI view
- historical AI reference
- retired AI view

These categories must remain distinct.

## transition_rules
Runtime transitions proceed through:
- request intake
- AI identity resolution
- controller and scope validation
- state validation
- AI action execution or denial
- output rendering
- trace preservation

Transitions must remain attributable and reviewable.

## validation_rules
Runtime validation must confirm:
- AI identity basis
- controller scope
- action scope
- state eligibility
- boundary eligibility
- historical or reference mode where applicable

Privileged AI execution is forbidden before validation succeeds.

## decision_matrix
- if AI identity resolution fails, stop
- if controller scope is invalid, deny
- if AI state is invalid for requested action, deny or review
- if boundary meaning is ambiguous, escalate
- if historical mode is requested, preserve historical distinction
- if restricted mode applies, emit bounded restricted output

## output_model
Runtime outputs must distinguish:
- successful current AI result
- denied AI result
- restricted AI result
- review-required AI result
- historical AI reference result
- safe fallback result

These output classes must remain distinct.

## masking_rules
Masked or restricted AI outputs
must remain identifiable as masked or restricted.
They must not impersonate full AI truth.

## historical_rules
Historical AI rendering
must not overwrite current AI meaning.
Replay,
historical view,
and current execution
must remain distinguishable.

## failure_codes
- AI_RUNTIME_IDENTITY_ERROR
- AI_RUNTIME_SCOPE_ERROR
- AI_RUNTIME_STATE_ERROR
- AI_RUNTIME_BOUNDARY_ERROR
- AI_RUNTIME_VALIDATION_ERROR
- AI_RUNTIME_REVIEW_REQUIRED
- AI_RUNTIME_SAFE_FALLBACK

## observability
Runtime must emit enough signals to reconstruct:
- request intent
- resolved AI identity
- resolved controller scope
- validation outcome
- chosen runtime path
- output class
- failure or escalation details

## review_rules
Review is required when:
- AI identity basis is ambiguous
- controller scope is ambiguous
- state meaning is ambiguous
- boundary meaning is ambiguous
- historical/reference mode is ambiguous

## denial_rules
Denial is required when:
- controller scope is invalid
- requested action exceeds allowed scope
- AI state is not eligible
- output exceeds boundary scope

## example_scenarios
- valid current-state AI action
- denied AI request due to invalid controller scope
- restricted AI output due to boundary rule
- historical AI reference request
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
