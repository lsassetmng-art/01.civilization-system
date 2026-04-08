# ============================================================
# VOTE CORE RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: vote
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical runtime behavior of vote in CivilizationOS.

## runtime_scope
Runtime covers:
subject resolution,
eligibility-aware handling,
ballot and result-aware rendering,
restricted-output handling,
historical and reference-mode handling,
and safe fallback behavior.

Runtime must convert architectural vote meaning
into deterministic execution behavior.

## required_behavior
- runtime subject resolution must be explicit
- runtime eligibility, ballot, and result handling must be explicit
- current and historical vote rendering must remain distinct
- validation must gate privileged execution
- denial, restriction, and fallback behavior must remain explicit
- observability must remain sufficient for reconstruction

## current_view_state
Runtime-visible vote state must distinguish:
- eligible or active vote view
- counting or review view
- result view
- historical vote reference
- closed or archived vote view

These categories must remain distinct.

## transition_rules
Runtime transitions proceed through:
- request intake
- subject resolution
- actor and eligibility validation
- state validation
- action execution or denial
- output rendering
- trace preservation

Transitions must remain attributable and reviewable.

## validation_rules
Runtime validation must confirm:
- subject identity basis
- actor scope
- eligibility scope
- vote state eligibility
- disclosure boundary eligibility
- historical or reference mode where applicable

Privileged vote execution is forbidden before validation succeeds.

## decision_matrix
- if subject resolution fails, stop
- if actor scope is invalid, deny
- if vote state is invalid for requested action, deny or review
- if eligibility, count, result, or boundary meaning is ambiguous, escalate
- if historical mode is requested, preserve historical distinction
- if restricted mode applies, emit bounded restricted output

## output_model
Runtime outputs must distinguish:
- successful current vote result
- denied vote result
- restricted vote result
- review-required vote result
- historical vote reference result
- safe fallback result

These output classes must remain distinct.

## masking_rules
Masked or restricted vote outputs
must remain identifiable as masked or restricted.
They must not impersonate full vote truth.

## historical_rules
Historical vote rendering
must not overwrite current vote meaning.
Replay,
historical view,
and current execution
must remain distinguishable.

## failure_codes
- VOTE_RUNTIME_IDENTITY_ERROR
- VOTE_RUNTIME_SCOPE_ERROR
- VOTE_RUNTIME_STATE_ERROR
- VOTE_RUNTIME_BOUNDARY_ERROR
- VOTE_RUNTIME_VALIDATION_ERROR
- VOTE_RUNTIME_REVIEW_REQUIRED
- VOTE_RUNTIME_SAFE_FALLBACK

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
- eligibility, count, or result meaning is ambiguous
- boundary meaning is ambiguous
- historical/reference mode is ambiguous

## denial_rules
Denial is required when:
- actor scope is invalid
- requested action exceeds allowed scope
- vote state is not eligible
- output exceeds boundary scope

## example_scenarios
- valid current-state vote action
- denied vote request due to invalid actor scope
- restricted vote output due to boundary rule
- historical vote reference request
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
