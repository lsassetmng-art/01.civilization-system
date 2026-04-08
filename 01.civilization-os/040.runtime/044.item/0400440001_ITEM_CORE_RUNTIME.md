# ============================================================
# ITEM CORE RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: 044.item
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical runtime behavior of 044.item in CivilizationOS.

## runtime_scope
Runtime covers:
identity or subject resolution,
state-aware rendering,
validation-gated execution,
restricted-output handling,
historical and reference-mode handling,
safe fallback behavior,
and attributable trace preservation.

Runtime must convert architectural meaning
into deterministic execution behavior
without rewriting domain truth.

## design_intent
This runtime core exists so that
current output,
restricted output,
denied output,
review-required output,
historical output,
and fallback output
remain distinguishable.

The goal is not brevity.
The goal is runtime semantic determinism.

## required_behavior
- runtime identity resolution must remain explicit
- runtime state handling must remain explicit
- current and historical rendering must remain distinct
- validation must gate privileged execution
- denial, restriction, and fallback behavior must remain explicit
- observability must remain sufficient for reconstruction
- output classes must remain semantically distinct

## runtime_state_model
Runtime-visible state must distinguish:
- active current-state view
- restricted view
- review-required view
- historical reference view
- archived, retired, completed, or closed view

These categories must remain semantically distinct
even when simplified for downstream consumers.

## transition_rules
Runtime transitions proceed through:
- request intake
- identity resolution
- scope validation
- state validation
- action execution or denial
- output rendering
- trace preservation

Transitions must remain attributable and reviewable.

## validation_rules
Runtime validation must confirm:
- identity basis
- actor scope
- action scope
- state eligibility
- boundary eligibility
- historical or reference mode where applicable

Privileged execution is forbidden before validation succeeds.

## decision_matrix
- if identity resolution fails, stop
- if actor scope is invalid, deny
- if state is invalid for requested action, deny or review
- if boundary meaning is ambiguous, escalate
- if historical mode is requested, preserve historical distinction
- if restricted mode applies, emit bounded restricted output
- if closure or completion applies, preserve trace and attribution

## output_model
Runtime outputs must distinguish:
- successful current-state result
- denied result
- restricted result
- review-required result
- historical reference result
- safe fallback result

These output classes must remain distinct.

## masking_rules
Masked or restricted outputs
must remain identifiable as masked or restricted.
They must not impersonate complete truth.

## historical_rules
Historical rendering
must not overwrite current-state meaning.
Replay,
historical view,
archive reference,
and current execution
must remain distinguishable.

## failure_codes
- RUNTIME_IDENTITY_ERROR
- RUNTIME_SCOPE_ERROR
- RUNTIME_STATE_ERROR
- RUNTIME_BOUNDARY_ERROR
- RUNTIME_VALIDATION_ERROR
- RUNTIME_REVIEW_REQUIRED
- RUNTIME_SAFE_FALLBACK

## observability
Runtime must emit enough signals
to reconstruct:
- request intent
- resolved identity
- resolved state
- validation outcome
- chosen runtime path
- output class
- failure or escalation details

## review_rules
Review is required when:
- identity basis is ambiguous
- actor scope is ambiguous
- state meaning is ambiguous
- boundary meaning is ambiguous
- historical or reference mode is ambiguous

## denial_rules
Denial is required when:
- actor scope is invalid
- requested action exceeds allowed scope
- state is not eligible
- output exceeds boundary scope

## example_scenarios
- valid current-state action
- denied request due to invalid actor scope
- restricted output due to boundary rule
- historical reference request
- safe fallback due to invalid state

## review_checklist
- runtime scope is explicit
- runtime state model is explicit
- validation rules are explicit
- decision matrix is explicit
- output model is explicit
- masking rules are explicit
- historical rules are explicit
- failure codes are explicit
- observability is explicit
- review rules are explicit
- denial rules are explicit
- fallback behavior is explicit

## acceptance_criteria
This runtime core is acceptable only when
an implementer can determine
identity handling,
state handling,
validation behavior,
denial behavior,
restriction behavior,
historical behavior,
and fallback behavior
without inventing missing runtime semantics.
