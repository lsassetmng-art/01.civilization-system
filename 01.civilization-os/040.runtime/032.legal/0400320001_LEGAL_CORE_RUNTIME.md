# ============================================================
# LEGAL CORE RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: legal
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical runtime behavior of legal in CivilizationOS.

## runtime_scope
Runtime covers:
subject resolution,
legal-state rendering,
procedure and decision-aware handling,
restricted-output handling,
historical and reference-mode handling,
and safe fallback behavior.

Runtime must convert architectural legal meaning
into deterministic execution behavior.

## required_behavior
- runtime subject resolution must be explicit
- runtime claim, procedure, and decision handling must be explicit
- current and historical legal rendering must remain distinct
- validation must gate privileged execution
- denial, restriction, and fallback behavior must remain explicit
- observability must remain sufficient for reconstruction

## current_view_state
Runtime-visible legal state must distinguish:
- filed or active procedure view
- review-required legal view
- decided legal view
- historical legal reference
- closed or archived legal view

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
- legal state eligibility
- boundary eligibility
- historical or reference mode where applicable

Privileged legal execution is forbidden before validation succeeds.

## decision_matrix
- if subject resolution fails, stop
- if actor scope is invalid, deny
- if legal state is invalid for requested action, deny or review
- if claim, procedure, or boundary meaning is ambiguous, escalate
- if historical mode is requested, preserve historical distinction
- if restricted mode applies, emit bounded restricted output

## output_model
Runtime outputs must distinguish:
- successful current legal result
- denied legal result
- restricted legal result
- review-required legal result
- historical legal reference result
- safe fallback result

These output classes must remain distinct.

## masking_rules
Masked or restricted legal outputs
must remain identifiable as masked or restricted.
They must not impersonate full legal truth.

## historical_rules
Historical legal rendering
must not overwrite current legal meaning.
Replay,
historical view,
and current execution
must remain distinguishable.

## failure_codes
- LEGAL_RUNTIME_IDENTITY_ERROR
- LEGAL_RUNTIME_SCOPE_ERROR
- LEGAL_RUNTIME_STATE_ERROR
- LEGAL_RUNTIME_BOUNDARY_ERROR
- LEGAL_RUNTIME_VALIDATION_ERROR
- LEGAL_RUNTIME_REVIEW_REQUIRED
- LEGAL_RUNTIME_SAFE_FALLBACK

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
- claim, procedure, or determination meaning is ambiguous
- boundary meaning is ambiguous
- historical/reference mode is ambiguous

## denial_rules
Denial is required when:
- actor scope is invalid
- requested action exceeds allowed scope
- legal state is not eligible
- output exceeds boundary scope

## example_scenarios
- valid current-state legal action
- denied legal request due to invalid actor scope
- restricted legal output due to boundary rule
- historical legal reference request
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
