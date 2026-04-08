# ============================================================
# RELIGION CORE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: religion
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical architectural role of religion in CivilizationOS.

## design_intent
Religion is the bounded belief-practice structure
through which affiliation,
practice,
ritual,
institutional relation,
restriction,
and historical religious continuity
become meaningful.

Religious meaning must remain distinct from
general culture,
law,
or administrative classification.

## architectural_position
The religion domain sits between:
- affiliation and practice
- institution or tradition relation
- social and cultural consequence
- governance or admin boundary
- historical continuity of practice

## required_behavior
- religious context must remain explicit
- affiliation and practice meanings must remain explicit
- current and historical religious states must remain distinct
- institution relation meaning must remain explicit
- ambiguous religion scope must fail closed

## canonical_rules
- affiliation is not unrestricted disclosure
- ritual participation is not general authority
- restricted religion output must remain identifiable
- historical religion records must remain queryable
- delegated religious handling must not silently widen authority
- ambiguous religion scope must fail closed

## state_model
The architecture distinguishes:
- declared affiliation state
- active practice state
- restricted religion state
- review-required religion state
- historical religion state
- retired or closed religious state

Each state must remain semantically distinct.

## actor_matrix
The domain may involve:
- subject actor
- operating actor
- reviewing actor
- approving actor
- observing actor
- integration adapter

Each role must remain distinguishable in meaning and effect.

## boundary_model
The religion boundary separates:
- canonical religious truth
- restricted religion representation
- historical religion reference
- projected status view
- externalized religion representation

Boundary collapse is prohibited.

## validation_rules
Validation must confirm:
- subject identity basis
- actor scope
- religion state eligibility
- boundary eligibility
- historical or reference mode where applicable

No privileged religion action is valid until validation succeeds.

## decision_matrix
- if subject identity is unresolved, stop
- if actor scope is invalid, deny
- if religion state is invalid for requested action, deny or review
- if affiliation, practice, or boundary meaning is ambiguous, escalate
- if historical mode is requested, preserve historical distinction
- if closure occurs, preserve trace and attribution

## output_model
Outputs must distinguish:
- bounded successful religion result
- denied religion result
- review-required religion result
- restricted religion result
- historical religion reference
- safe fallback result

These classes must remain distinct.

## failure_codes
- RELIGION_IDENTITY_ERROR
- RELIGION_SCOPE_ERROR
- RELIGION_STATE_ERROR
- RELIGION_BOUNDARY_ERROR
- RELIGION_VALIDATION_ERROR
- RELIGION_REVIEW_REQUIRED
- RELIGION_SAFE_FALLBACK

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
Historical religion references
must not overwrite current religion truth.
Replay,
historical reference,
and current operation
must remain distinguishable.

## review_checklist
- religious context is explicit
- affiliation/practice distinction is explicit
- state model is explicit
- validation rules are explicit
- output model is explicit
- observability is explicit
- historical distinction is explicit

## acceptance_criteria
This architecture is acceptable only when
runtime and policy can derive
religion identity meaning,
affiliation meaning,
practice meaning,
validation meaning,
and historical meaning
without inventing missing semantics.
