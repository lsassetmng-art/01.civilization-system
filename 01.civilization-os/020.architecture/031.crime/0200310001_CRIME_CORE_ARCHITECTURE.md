# ============================================================
# CRIME CORE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: crime
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical architectural role of crime in CivilizationOS.

## design_intent
Crime is the bounded violation structure
through which alleged acts,
investigation,
disposition,
restriction,
and historical offense trace
become meaningful.

Crime meaning must remain distinct from
mere suspicion,
mere social judgment,
and final legal determination.

## architectural_position
The crime domain sits between:
- prohibited or suspected acts
- investigation and review
- legal and administrative consequence
- security and governance relation
- historical offense continuity

## required_behavior
- crime context must remain explicit
- allegation and determination meanings must remain explicit
- current and historical crime states must remain distinct
- restriction and review meanings must remain explicit
- ambiguous crime scope must fail closed

## canonical_rules
- allegation is not conviction
- investigation is not final disposition
- restricted crime output must remain identifiable
- historical offense records must remain queryable
- delegated review must not silently widen authority
- ambiguous crime status must fail closed

## state_model
The architecture distinguishes:
- alleged offense state
- investigated state
- review-required state
- determined or disposed state
- restricted state
- historical crime state

Each state must remain semantically distinct.

## actor_matrix
The domain may involve:
- subject actor
- investigating actor
- reviewing actor
- deciding actor
- observing actor
- integration adapter

Each role must remain distinguishable in meaning and effect.

## boundary_model
The crime boundary separates:
- canonical offense truth
- restricted crime representation
- historical crime reference
- projected status view
- externalized crime representation

Boundary collapse is prohibited.

## validation_rules
Validation must confirm:
- subject identity basis
- actor scope
- crime state eligibility
- boundary eligibility
- historical or reference mode where applicable

No privileged crime action is valid until validation succeeds.

## decision_matrix
- if subject identity is unresolved, stop
- if actor scope is invalid, deny
- if crime state is invalid for requested action, deny or review
- if allegation or boundary meaning is ambiguous, escalate
- if historical mode is requested, preserve historical distinction
- if disposition occurs, preserve trace and attribution

## output_model
Outputs must distinguish:
- bounded successful crime result
- denied crime result
- review-required crime result
- restricted crime result
- historical crime reference
- safe fallback result

These classes must remain distinct.

## failure_codes
- CRIME_IDENTITY_ERROR
- CRIME_SCOPE_ERROR
- CRIME_STATE_ERROR
- CRIME_BOUNDARY_ERROR
- CRIME_VALIDATION_ERROR
- CRIME_REVIEW_REQUIRED
- CRIME_SAFE_FALLBACK

## observability
The architecture must support reconstruction of:
- which subject was addressed
- which actor context applied
- what validation occurred
- which decision path was chosen
- whether the outcome was current,
  denied,
  restricted,
  historical,
  or escalated

## historical_rules
Historical crime references
must not overwrite current crime truth.
Replay,
historical reference,
and current operation
must remain distinguishable.

## review_checklist
- crime context is explicit
- allegation/determination distinction is explicit
- state model is explicit
- validation rules are explicit
- output model is explicit
- observability is explicit
- historical distinction is explicit

## acceptance_criteria
This architecture is acceptable only when
runtime and policy can derive
crime identity meaning,
allegation meaning,
determination meaning,
validation meaning,
and historical meaning
without inventing missing semantics.
