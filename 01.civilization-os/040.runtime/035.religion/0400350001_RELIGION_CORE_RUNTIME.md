# ============================================================
# RELIGION CORE RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: religion
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical runtime behavior of religion in CivilizationOS.

## runtime_scope
Runtime covers:
subject resolution,
affiliation and practice-aware rendering,
restricted-output handling,
historical and reference-mode handling,
and safe fallback behavior.

Runtime must convert architectural religion meaning
into deterministic execution behavior.

## required_behavior
- runtime subject resolution must be explicit
- runtime affiliation and practice handling must be explicit
- current and historical religion rendering must remain distinct
- validation must gate privileged execution
- denial, restriction, and fallback behavior must remain explicit
- observability must remain sufficient for reconstruction

## current_view_state
Runtime-visible religion state must distinguish:
- active affiliation or practice view
- restricted religion view
- review-required religion view
- historical religion reference
- retired or closed religion view

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
- religion state eligibility
- disclosure boundary eligibility
- historical or reference mode where applicable

Privileged religion execution is forbidden before validation succeeds.

## decision_matrix
- if subject resolution fails, stop
- if actor scope is invalid, deny
- if religion state is invalid for requested action, deny or review
- if affiliation, practice, or boundary meaning is ambiguous, escalate
- if historical mode is requested, preserve historical distinction
- if restricted mode applies, emit bounded restricted output

## output_model
Runtime outputs must distinguish:
- successful current religion result
- denied religion result
- restricted religion result
- review-required religion result
- historical religion reference result
- safe fallback result

These output classes must remain distinct.

## masking_rules
Masked or restricted religion outputs
must remain identifiable as masked or restricted.
They must not impersonate full religious truth.

## historical_rules
Historical religion rendering
must not overwrite current religion meaning.
Replay,
historical view,
and current execution
must remain distinguishable.

## failure_codes
- RELIGION_RUNTIME_IDENTITY_ERROR
- RELIGION_RUNTIME_SCOPE_ERROR
- RELIGION_RUNTIME_STATE_ERROR
- RELIGION_RUNTIME_BOUNDARY_ERROR
- RELIGION_RUNTIME_VALIDATION_ERROR
- RELIGION_RUNTIME_REVIEW_REQUIRED
- RELIGION_RUNTIME_SAFE_FALLBACK

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
- affiliation or practice meaning is ambiguous
- boundary meaning is ambiguous
- historical/reference mode is ambiguous

## denial_rules
Denial is required when:
- actor scope is invalid
- requested action exceeds allowed scope
- religion state is not eligible
- output exceeds boundary scope

## example_scenarios
- valid current-state religion action
- denied religion request due to invalid actor scope
- restricted religion output due to boundary rule
- historical religion reference request
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
