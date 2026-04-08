# ============================================================
# TIME CORE RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: time
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical runtime behavior of time in CivilizationOS.

## runtime_scope
Runtime covers:
current-time reference handling,
scheduled reference handling,
historical and replay-mode handling,
time-sensitive rendering,
and safe fallback behavior.

Runtime must convert architectural time meaning
into deterministic execution behavior.

## required_behavior
- runtime time-basis resolution must be explicit
- runtime current, scheduled, and historical handling must be explicit
- replay and original occurrence must remain distinct
- validation must gate privileged execution
- denial and fallback behavior must remain explicit
- observability must remain sufficient for reconstruction

## current_view_state
Runtime-visible time state must distinguish:
- current reference view
- scheduled reference view
- occurred view
- historical or replay reference
- closed or archived time view

These categories must remain distinct.

## transition_rules
Runtime transitions proceed through:
- request intake
- time-basis resolution
- reference-mode validation
- state validation
- output rendering or denial
- trace preservation

Transitions must remain attributable and reviewable.

## validation_rules
Runtime validation must confirm:
- time basis
- reference scope
- schedule eligibility
- historical or replay mode
- boundary eligibility

Time-sensitive execution is forbidden before validation succeeds.

## decision_matrix
- if time basis resolution fails, stop
- if reference scope is invalid, deny
- if current, scheduled, historical, or replay meaning is ambiguous, escalate
- if historical mode is requested, preserve historical distinction
- if replay mode applies, emit bounded replay-aware output

## output_model
Runtime outputs must distinguish:
- current-time result
- denied time result
- review-required time result
- historical reference result
- replay reference result
- safe fallback result

These output classes must remain distinct.

## masking_rules
Restricted time outputs
must remain identifiable as restricted.
They must not impersonate full timing truth.

## historical_rules
Historical or replay rendering
must not overwrite current time meaning.
Replay,
historical view,
and current execution
must remain distinguishable.

## failure_codes
- TIME_RUNTIME_IDENTITY_ERROR
- TIME_RUNTIME_SCOPE_ERROR
- TIME_RUNTIME_STATE_ERROR
- TIME_RUNTIME_BOUNDARY_ERROR
- TIME_RUNTIME_VALIDATION_ERROR
- TIME_RUNTIME_REVIEW_REQUIRED
- TIME_RUNTIME_SAFE_FALLBACK

## observability
Runtime must emit enough signals to reconstruct:
- request intent
- resolved time basis
- resolved reference mode
- validation outcome
- chosen runtime path
- output class
- failure or escalation details

## review_rules
Review is required when:
- time basis is ambiguous
- current/scheduled/historical distinction is ambiguous
- replay meaning is ambiguous
- boundary meaning is ambiguous

## denial_rules
Denial is required when:
- reference scope is invalid
- requested timing interpretation exceeds allowed scope
- output exceeds boundary scope

## example_scenarios
- valid current-time reference
- denied request due to invalid reference scope
- replay reference request
- historical reference request
- safe fallback due to invalid state

## review_checklist
- runtime scope is explicit
- time-mode handling is explicit
- validation rules are explicit
- decision matrix is explicit
- output model is explicit
- historical rules are explicit
- failure codes are explicit
- observability is explicit
- fallback behavior is explicit
