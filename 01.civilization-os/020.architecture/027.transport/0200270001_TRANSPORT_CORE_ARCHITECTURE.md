# ============================================================
# TRANSPORT CORE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: transport
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical architectural role of transport in CivilizationOS.

## design_intent
Transport is the bounded movement structure
through which actors,
items,
vehicles,
and carried resources
move between valid locations and states.

Transport meaning must remain distinct from
mere route display,
mere map relation,
and mere current location snapshots.

## architectural_position
The transport domain sits between:
- map and time references
- housing and location presence
- item and inventory movement
- work and trade execution
- nation or world boundary crossing

## required_behavior
- transport context must remain explicit
- route basis must remain explicit
- origin and destination meanings must remain explicit
- carried subject scope must remain explicit
- current and historical transport states must remain distinct
- ambiguous transport scope must fail closed

## canonical_rules
- route intent is not completed arrival
- visual route display must not overwrite location truth
- delayed or restricted transport must remain identifiable
- historical transport records must remain queryable
- delegated operation must not silently widen authority
- ambiguous route scope must fail closed

## state_model
The architecture distinguishes:
- planned transport state
- active transport state
- delayed or restricted transport state
- completed transport state
- historical transport state
- cancelled or dissolved transport state

Each state must remain semantically distinct.

## actor_matrix
The domain may involve:
- transported subject
- operating actor
- reviewing actor
- approving actor
- observing actor
- integration adapter

Each role must remain distinguishable in meaning and effect.

## boundary_model
The transport boundary separates:
- canonical transport truth
- projected movement view
- restricted transport representation
- historical transport reference
- externalized transport representation

Boundary collapse is prohibited.

## validation_rules
Validation must confirm:
- transport identity basis
- actor and route scope
- carried subject scope
- state eligibility
- boundary eligibility
- historical or reference mode where applicable

No privileged transport action is valid until validation succeeds.

## decision_matrix
- if transport identity is unresolved, stop
- if actor scope is invalid, deny
- if transport state is invalid for requested action, deny or review
- if route or boundary meaning is ambiguous, escalate
- if historical mode is requested, preserve historical distinction
- if closure or cancellation occurs, preserve trace and attribution

## output_model
Outputs must distinguish:
- bounded successful transport result
- denied transport result
- review-required transport result
- restricted transport result
- historical transport reference
- safe fallback result

These classes must remain distinct.

## failure_codes
- TRANSPORT_IDENTITY_ERROR
- TRANSPORT_SCOPE_ERROR
- TRANSPORT_STATE_ERROR
- TRANSPORT_BOUNDARY_ERROR
- TRANSPORT_VALIDATION_ERROR
- TRANSPORT_REVIEW_REQUIRED
- TRANSPORT_SAFE_FALLBACK

## observability
The architecture must support reconstruction of:
- which transport unit was addressed
- which actor and route context applied
- what validation occurred
- which decision path was chosen
- whether the outcome was current,
  denied,
  restricted,
  historical,
  or escalated

## historical_rules
Historical transport references
must not overwrite current transport truth.
Replay,
historical reference,
and current operation
must remain distinguishable.

## review_checklist
- transport context is explicit
- route basis is explicit
- carried subject scope is explicit
- state model is explicit
- validation rules are explicit
- output model is explicit
- observability is explicit
- historical distinction is explicit

## acceptance_criteria
This architecture is acceptable only when
runtime and policy can derive
transport identity meaning,
route meaning,
carried subject meaning,
validation meaning,
and historical meaning
without inventing missing semantics.
