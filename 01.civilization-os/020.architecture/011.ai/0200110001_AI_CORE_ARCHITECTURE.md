# ============================================================
# AI CORE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: ai
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical architectural role of ai in CivilizationOS.

## design_intent
AI is the bounded synthetic-agency structure
through which autonomous or semi-autonomous actors,
their capability,
their operating scope,
their reviewability,
and their attributable effect
become meaningful.

AI is not identical to permission,
identity,
or job.
AI may hold identity,
may be granted permissions,
and may perform jobs,
but those meanings must remain distinct.

## architectural_position
The ai domain sits between:
- identity continuity
- permission control
- role and job execution
- security and governance oversight
- integration-facing representation

## required_behavior
- AI identity must remain explicit
- AI capability scope must remain explicit
- AI control boundary must remain explicit
- current and historical AI states must remain distinct
- AI action must remain attributable
- ambiguous AI scope must fail closed

## canonical_rules
- AI capability must not imply unrestricted authority
- AI output must not overwrite source truth
- delegated AI behavior must not widen authority silently
- masked AI output must remain identifiable
- historical AI traces must remain queryable
- ambiguous AI authority must fail closed

## state_model
The architecture distinguishes:
- proposed AI state
- active AI state
- restricted AI state
- review-required AI state
- historical AI state
- retired AI state

These states must remain semantically distinct.

## actor_matrix
The domain may involve:
- AI subject
- controlling actor
- operating actor
- reviewing actor
- approving actor
- integration adapter

Each role must remain distinguishable in meaning and effect.

## boundary_model
The AI boundary separates:
- canonical AI identity
- projected AI representation
- restricted or masked AI output
- historical AI reference
- integration-specific AI representation

Boundary collapse is prohibited.

## validation_rules
Validation must confirm:
- AI identity basis
- controlling actor scope
- operating scope
- state eligibility
- boundary eligibility
- historical or reference mode where applicable

No privileged AI action is valid until validation succeeds.

## decision_matrix
- if AI identity is unresolved, stop
- if controller scope is invalid, deny
- if AI state is invalid for requested action, deny or review
- if boundary meaning is ambiguous, escalate
- if historical mode is requested, preserve historical distinction
- if AI is retired or restricted, preserve trace and attribution

## output_model
Outputs must distinguish:
- bounded successful AI result
- denied AI result
- review-required AI result
- restricted AI result
- historical AI reference
- safe fallback result

These classes must remain distinct.

## failure_codes
- AI_IDENTITY_ERROR
- AI_SCOPE_ERROR
- AI_STATE_ERROR
- AI_BOUNDARY_ERROR
- AI_VALIDATION_ERROR
- AI_REVIEW_REQUIRED
- AI_SAFE_FALLBACK

## observability
The architecture must support reconstruction of:
- which AI acted
- which controller context applied
- what validation occurred
- which decision path was chosen
- whether the outcome was current,
  denied,
  restricted,
  historical,
  or escalated

## historical_rules
Historical AI references
must not overwrite current AI truth.
Replay,
historical reference,
and current operation
must remain distinguishable.

## review_checklist
- AI identity is explicit
- capability scope is explicit
- controller boundary is explicit
- state model is explicit
- validation rules are explicit
- output model is explicit
- observability is explicit
- historical distinction is explicit

## acceptance_criteria
This architecture is acceptable only when
runtime and policy can derive
AI identity meaning,
capability meaning,
control meaning,
validation meaning,
and historical meaning
without inventing missing semantics.
