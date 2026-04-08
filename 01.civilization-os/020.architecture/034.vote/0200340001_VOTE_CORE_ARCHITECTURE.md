# ============================================================
# VOTE CORE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: vote
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical architectural role of vote in CivilizationOS.

## design_intent
Vote is the bounded collective-choice structure
through which eligibility,
balloting,
counting,
result formation,
review,
and historical electoral trace
become meaningful.

Voting meaning must remain distinct from
general preference,
social opinion,
or administrative note.

## architectural_position
The vote domain sits between:
- eligibility and participant basis
- ballot intake and counting
- review and result formation
- governance consequence
- historical electoral continuity

## required_behavior
- vote context must remain explicit
- eligibility and counting meanings must remain explicit
- current and historical vote states must remain distinct
- result meaning must remain explicit
- ambiguous vote scope must fail closed

## canonical_rules
- eligibility is not cast vote
- cast vote is not counted result
- counted result is not unrestricted disclosure
- historical vote records must remain queryable
- delegated vote handling must not silently widen authority
- ambiguous vote validity must fail closed

## state_model
The architecture distinguishes:
- eligible state
- ballot-cast state
- counting or review state
- result state
- restricted vote state
- historical vote state

Each state must remain semantically distinct.

## actor_matrix
The domain may involve:
- eligible voter
- operating actor
- counting actor
- reviewing actor
- observing actor
- integration adapter

Each role must remain distinguishable in meaning and effect.

## boundary_model
The vote boundary separates:
- canonical vote truth
- restricted vote representation
- historical vote reference
- projected result view
- externalized vote representation

Boundary collapse is prohibited.

## validation_rules
Validation must confirm:
- subject identity basis
- eligibility scope
- vote state eligibility
- disclosure boundary eligibility
- historical or reference mode where applicable

No privileged vote action is valid until validation succeeds.

## decision_matrix
- if subject identity is unresolved, stop
- if actor scope is invalid, deny
- if vote state is invalid for requested action, deny or review
- if eligibility, count, or boundary meaning is ambiguous, escalate
- if historical mode is requested, preserve historical distinction
- if result closes, preserve trace and attribution

## output_model
Outputs must distinguish:
- bounded successful vote result
- denied vote result
- review-required vote result
- restricted vote result
- historical vote reference
- safe fallback result

These classes must remain distinct.

## failure_codes
- VOTE_IDENTITY_ERROR
- VOTE_SCOPE_ERROR
- VOTE_STATE_ERROR
- VOTE_BOUNDARY_ERROR
- VOTE_VALIDATION_ERROR
- VOTE_REVIEW_REQUIRED
- VOTE_SAFE_FALLBACK

## observability
The architecture must support reconstruction of:
- which vote subject was addressed
- which actor context applied
- what validation occurred
- which decision path was chosen
- whether the outcome was current,
  denied,
  restricted,
  historical,
  or escalated

## historical_rules
Historical vote references
must not overwrite current vote truth.
Replay,
historical reference,
and current operation
must remain distinguishable.

## review_checklist
- vote context is explicit
- eligibility/count/result distinction is explicit
- state model is explicit
- validation rules are explicit
- output model is explicit
- observability is explicit
- historical distinction is explicit

## acceptance_criteria
This architecture is acceptable only when
runtime and policy can derive
vote identity meaning,
eligibility meaning,
count meaning,
result meaning,
validation meaning,
and historical meaning
without inventing missing semantics.
