# ============================================================
# HOUSING CORE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: 028.housing
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical architectural role of 028.housing in CivilizationOS.

## design_intent
This architecture exists to stabilize 028.housing
as a bounded semantic unit.
Its role is to make identity,
state,
authority relation,
boundary relation,
historical distinction,
and output meaning
explicit enough for lower layers.

This file is not a short memo.
It is a semantic contract for runtime,
policy,
integration,
operations,
security,
infrastructure,
implementation,
and development.

## architectural_position
The domain receives bounded inputs,
holds meaning-bearing states,
interacts with adjacent domains,
and emits bounded outputs.
Its meaning must survive runtime execution,
policy evaluation,
historical replay,
and integration projection.

## required_behavior
- identity meaning must remain explicit
- actor and controller scope must remain explicit
- state distinctions must remain explicit
- current and historical meanings must remain distinct
- boundary distinctions must remain explicit
- denial and review paths must remain explicit
- outputs must remain bounded and attributable

## canonical_rules
- source truth must not be overwritten by projection
- summary views must not erase state distinctions
- historical records must not impersonate current truth
- delegated behavior must not silently widen authority
- restricted outputs must remain identifiable
- ambiguous scope must fail closed
- exceptional paths must remain reviewable

## state_model
The architecture distinguishes:
- proposed state
- active state
- restricted state
- review-required state
- historical state
- closed, retired, archived, dissolved, or completed state

Each state must remain semantically distinct.

## actor_matrix
The domain may involve:
- source actor
- operating actor
- reviewing actor
- approving actor
- observing actor
- integration adapter

Each role must remain distinguishable in meaning and effect.

## boundary_model
The domain boundary separates:
- source truth
- projected representation
- restricted representation
- historical reference
- externalized representation

Boundary collapse is prohibited.

## validation_rules
Validation must confirm:
- identity basis
- actor eligibility
- state eligibility
- boundary eligibility
- requested action eligibility
- historical or reference mode where applicable

No privileged action is valid until validation succeeds.

## decision_matrix
- if identity is unresolved, stop
- if actor scope is invalid, fail closed
- if state is invalid for the requested action, deny or review
- if boundary meaning is ambiguous, escalate
- if historical mode is requested, preserve historical distinction
- if closure occurs, preserve trace and attribution

## dependency
This architecture is consumed by runtime,
policy,
integration,
operations,
security,
infrastructure,
implementation,
and development.
Lower layers must not redefine this meaning.

## output_model
Outputs must distinguish:
- bounded success
- bounded denial
- review-required result
- restricted result
- historical reference result
- safe fallback result

These output classes must remain distinct.

## failure_codes
- ARCH_IDENTITY_ERROR
- ARCH_SCOPE_ERROR
- ARCH_STATE_ERROR
- ARCH_BOUNDARY_ERROR
- ARCH_VALIDATION_ERROR
- ARCH_REVIEW_REQUIRED
- ARCH_SAFE_FALLBACK

## observability
The architecture must support reconstruction of:
- who acted
- what state existed
- what validation occurred
- which decision path was chosen
- whether the result was current,
  denied,
  restricted,
  historical,
  or escalated

## historical_rules
Historical reference must not overwrite current truth.
Replay,
reference,
archive,
and current operation
must remain distinguishable.

## review_rules
Review is required when:
- identity basis is unclear
- actor authority is unclear
- state meaning is unclear
- boundary meaning is unclear
- action scope is unclear

## denial_rules
Denial is required when:
- actor scope is invalid
- requested action exceeds allowed scope
- state is not eligible for transition
- requested output exceeds allowed boundary

## example_scenarios
- valid current-state action
- denied action due to invalid actor scope
- restricted output due to boundary rule
- historical reference request
- review-required path due to ambiguity
- closure with preserved trace

## review_checklist
- identity meaning is explicit
- actor matrix is explicit
- state model is explicit
- boundary model is explicit
- validation rules are explicit
- decision matrix is explicit
- dependency is explicit
- output model is explicit
- failure codes are explicit
- observability is explicit
- historical rules are explicit
- review rules are explicit
- denial rules are explicit

## acceptance_criteria
This architecture is acceptable only when
runtime and policy can derive
identity meaning,
state meaning,
authority meaning,
boundary meaning,
validation meaning,
review meaning,
denial meaning,
and historical meaning
without inventing missing semantics.
