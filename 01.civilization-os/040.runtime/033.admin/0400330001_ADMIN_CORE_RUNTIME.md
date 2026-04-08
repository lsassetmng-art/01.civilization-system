# ============================================================
# ADMIN CORE RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: admin
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical runtime behavior of admin in CivilizationOS.

## runtime_scope
Runtime covers:
request resolution,
administrative-state rendering,
procedure and approval-aware handling,
restricted-output handling,
historical and reference-mode handling,
and safe fallback behavior.

Runtime must convert architectural admin meaning
into deterministic execution behavior.

## required_behavior
- runtime request resolution must be explicit
- runtime procedure and approval handling must be explicit
- current and historical admin rendering must remain distinct
- validation must gate privileged execution
- denial, restriction, and fallback behavior must remain explicit
- observability must remain sufficient for reconstruction

## current_view_state
Runtime-visible admin state must distinguish:
- filed or active processing view
- review-required admin view
- approved or denied admin view
- historical admin reference
- closed or archived admin view

These categories must remain distinct.

## transition_rules
Runtime transitions proceed through:
- request intake
- request resolution
- actor and scope validation
- state validation
- action execution or denial
- output rendering
- trace preservation

Transitions must remain attributable and reviewable.

## validation_rules
Runtime validation must confirm:
- request identity basis
- actor scope
- action scope
- admin state eligibility
- boundary eligibility
- historical or reference mode where applicable

Privileged admin execution is forbidden before validation succeeds.

## decision_matrix
- if request resolution fails, stop
- if actor scope is invalid, deny
- if admin state is invalid for requested action, deny or review
- if request, approval, or boundary meaning is ambiguous, escalate
- if historical mode is requested, preserve historical distinction
- if restricted mode applies, emit bounded restricted output

## output_model
Runtime outputs must distinguish:
- successful current admin result
- denied admin result
- restricted admin result
- review-required admin result
- historical admin reference result
- safe fallback result

These output classes must remain distinct.

## masking_rules
Masked or restricted admin outputs
must remain identifiable as masked or restricted.
They must not impersonate full admin truth.

## historical_rules
Historical admin rendering
must not overwrite current admin meaning.
Replay,
historical view,
and current execution
must remain distinguishable.

## failure_codes
- ADMIN_RUNTIME_IDENTITY_ERROR
- ADMIN_RUNTIME_SCOPE_ERROR
- ADMIN_RUNTIME_STATE_ERROR
- ADMIN_RUNTIME_BOUNDARY_ERROR
- ADMIN_RUNTIME_VALIDATION_ERROR
- ADMIN_RUNTIME_REVIEW_REQUIRED
- ADMIN_RUNTIME_SAFE_FALLBACK

## observability
Runtime must emit enough signals to reconstruct:
- request intent
- resolved request identity
- resolved actor scope
- validation outcome
- chosen runtime path
- output class
- failure or escalation details

## review_rules
Review is required when:
- request identity basis is ambiguous
- actor scope is ambiguous
- procedure or approval meaning is ambiguous
- boundary meaning is ambiguous
- historical/reference mode is ambiguous

## denial_rules
Denial is required when:
- actor scope is invalid
- requested action exceeds allowed scope
- admin state is not eligible
- output exceeds boundary scope

## example_scenarios
- valid current-state admin action
- denied admin request due to invalid actor scope
- restricted admin output due to boundary rule
- historical admin reference request
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
