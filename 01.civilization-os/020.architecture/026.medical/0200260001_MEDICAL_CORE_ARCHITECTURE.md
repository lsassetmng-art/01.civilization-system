# ============================================================
# MEDICAL CORE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: medical
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical architectural role of medical in CivilizationOS.

## design_intent
Medical is the bounded health-state structure
through which condition,
assessment,
intervention,
restriction,
recovery,
and historical health trace
become meaningful.

Medical meaning must remain distinct from
general life state,
work suitability,
and disclosure policy.

## architectural_position
The medical domain sits between:
- body or health condition
- assessment and diagnosis-like interpretation
- intervention and care
- restriction and recovery consequence
- historical clinical continuity

## required_behavior
- medical context must remain explicit
- assessment basis must remain explicit
- intervention basis must remain explicit
- current and historical medical states must remain distinct
- restriction and recovery meaning must remain explicit
- ambiguous medical scope must fail closed

## canonical_rules
- observation is not final assessment
- assessment is not unrestricted disclosure
- intervention does not erase prior state
- recovery does not erase historical trace
- restricted medical output must remain identifiable
- ambiguous medical authority must fail closed

## state_model
The architecture distinguishes:
- observed condition state
- assessed condition state
- active intervention state
- restricted condition state
- recovery state
- historical medical state

Each state must remain semantically distinct.

## actor_matrix
The domain may involve:
- subject actor
- observing or assessing actor
- operating actor
- reviewing actor
- approving actor
- integration adapter

Each role must remain distinguishable in meaning and effect.

## boundary_model
The medical boundary separates:
- canonical condition truth
- restricted medical representation
- historical medical reference
- recovery-facing projection
- externalized medical representation

Boundary collapse is prohibited.

## validation_rules
Validation must confirm:
- medical subject identity basis
- actor and intervention scope
- state eligibility
- disclosure boundary eligibility
- historical or reference mode where applicable

No privileged medical action is valid until validation succeeds.

## decision_matrix
- if subject identity is unresolved, stop
- if actor scope is invalid, deny
- if medical state is invalid for requested action, deny or review
- if boundary meaning is ambiguous, escalate
- if historical mode is requested, preserve historical distinction
- if recovery or closure occurs, preserve prior trace and attribution

## output_model
Outputs must distinguish:
- bounded successful medical result
- denied medical result
- review-required medical result
- restricted medical result
- historical medical reference
- safe fallback result

These classes must remain distinct.

## failure_codes
- MEDICAL_IDENTITY_ERROR
- MEDICAL_SCOPE_ERROR
- MEDICAL_STATE_ERROR
- MEDICAL_BOUNDARY_ERROR
- MEDICAL_VALIDATION_ERROR
- MEDICAL_REVIEW_REQUIRED
- MEDICAL_SAFE_FALLBACK

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
Historical medical references
must not overwrite current medical truth.
Replay,
historical reference,
and current operation
must remain distinguishable.

## review_checklist
- medical context is explicit
- assessment and intervention bases are explicit
- restriction and recovery meanings are explicit
- state model is explicit
- validation rules are explicit
- output model is explicit
- observability is explicit
- historical distinction is explicit

## acceptance_criteria
This architecture is acceptable only when
runtime and policy can derive
medical identity meaning,
assessment meaning,
intervention meaning,
validation meaning,
and historical meaning
without inventing missing semantics.
