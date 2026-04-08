# ============================================================
# LEGAL CORE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: legal
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical architectural role of legal in CivilizationOS.

## design_intent
Legal is the bounded formal-rule structure
through which validity,
procedure,
claim,
decision,
enforceable interpretation,
and historical legal trace
become meaningful.

Legal meaning must remain distinct from
general policy preference,
social norm,
or provisional accusation.

## architectural_position
The legal domain sits between:
- formal rule interpretation
- claim and procedure handling
- administrative and governance consequence
- crime and decision linkage
- historical legal continuity

## required_behavior
- legal context must remain explicit
- claim and determination meanings must remain explicit
- current and historical legal states must remain distinct
- procedure meaning must remain explicit
- ambiguous legal scope must fail closed

## canonical_rules
- legal claim is not final determination
- procedure is not itself a final outcome
- restricted legal output must remain identifiable
- historical legal records must remain queryable
- delegated legal handling must not silently widen authority
- ambiguous legal validity must fail closed

## state_model
The architecture distinguishes:
- filed or proposed legal state
- active procedure state
- review-required legal state
- decided legal state
- restricted legal state
- historical legal state

Each state must remain semantically distinct.

## actor_matrix
The domain may involve:
- subject actor
- filing actor
- reviewing actor
- deciding actor
- observing actor
- integration adapter

Each role must remain distinguishable in meaning and effect.

## boundary_model
The legal boundary separates:
- canonical legal truth
- restricted legal representation
- historical legal reference
- projected status view
- externalized legal representation

Boundary collapse is prohibited.

## validation_rules
Validation must confirm:
- legal subject identity basis
- actor scope
- legal state eligibility
- procedure eligibility
- boundary eligibility
- historical or reference mode where applicable

No privileged legal action is valid until validation succeeds.

## decision_matrix
- if legal identity is unresolved, stop
- if actor scope is invalid, deny
- if legal state is invalid for requested action, deny or review
- if claim, procedure, or boundary meaning is ambiguous, escalate
- if historical mode is requested, preserve historical distinction
- if decision or closure occurs, preserve trace and attribution

## output_model
Outputs must distinguish:
- bounded successful legal result
- denied legal result
- review-required legal result
- restricted legal result
- historical legal reference
- safe fallback result

These classes must remain distinct.

## failure_codes
- LEGAL_IDENTITY_ERROR
- LEGAL_SCOPE_ERROR
- LEGAL_STATE_ERROR
- LEGAL_BOUNDARY_ERROR
- LEGAL_VALIDATION_ERROR
- LEGAL_REVIEW_REQUIRED
- LEGAL_SAFE_FALLBACK

## observability
The architecture must support reconstruction of:
- which legal subject was addressed
- which actor context applied
- what validation occurred
- which decision path was chosen
- whether the outcome was current,
  denied,
  restricted,
  historical,
  or escalated

## historical_rules
Historical legal references
must not overwrite current legal truth.
Replay,
historical reference,
and current operation
must remain distinguishable.

## review_checklist
- legal context is explicit
- claim/procedure/determination distinction is explicit
- state model is explicit
- validation rules are explicit
- output model is explicit
- observability is explicit
- historical distinction is explicit

## acceptance_criteria
This architecture is acceptable only when
runtime and policy can derive
legal identity meaning,
claim meaning,
procedure meaning,
determination meaning,
validation meaning,
and historical meaning
without inventing missing semantics.
