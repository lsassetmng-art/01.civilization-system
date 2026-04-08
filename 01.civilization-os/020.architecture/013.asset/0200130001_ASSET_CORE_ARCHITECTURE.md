# ============================================================
# ASSET CORE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: asset
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical architectural role of asset in CivilizationOS.

## design_intent
Asset is the bounded value-bearing holding structure
through which owned or controlled resources,
their state,
their valuation context,
their control boundary,
and their historical continuity
become meaningful.

Asset is not identical to market price,
inventory movement,
or finance settlement.
These meanings must remain distinct.

## architectural_position
The asset domain sits between:
- value-bearing ownership or control
- finance and economy consequence
- item and inventory linkage
- organization and company holding
- historical trace and auditability

## required_behavior
- asset identity must remain explicit
- control or holder scope must remain explicit
- state distinctions must remain explicit
- valuation context must remain explicit
- current and historical asset meanings must remain distinct
- ambiguous asset scope must fail closed

## canonical_rules
- market projection must not overwrite asset truth
- displayed value must not overwrite control truth
- restricted assets must remain identifiable as restricted
- historical asset records must remain queryable
- delegated control must not silently widen authority
- ambiguous control boundary must fail closed

## state_model
The architecture distinguishes:
- proposed asset state
- active asset state
- restricted asset state
- review-required asset state
- historical asset state
- retired, disposed, or dissolved asset state

Each state must remain semantically distinct.

## actor_matrix
The domain may involve:
- holder or controller
- operating actor
- reviewing actor
- approving actor
- observing actor
- integration adapter

Each role must remain distinguishable in meaning and effect.

## boundary_model
The asset boundary separates:
- canonical asset truth
- projected valuation view
- restricted asset representation
- historical asset reference
- externalized asset representation

Boundary collapse is prohibited.

## validation_rules
Validation must confirm:
- asset identity basis
- holder or controller scope
- state eligibility
- valuation context eligibility
- boundary eligibility
- historical or reference mode where applicable

No privileged asset action is valid until validation succeeds.

## decision_matrix
- if asset identity is unresolved, stop
- if holder scope is invalid, deny
- if asset state is invalid for requested action, deny or review
- if valuation or boundary meaning is ambiguous, escalate
- if historical mode is requested, preserve historical distinction
- if disposal or retirement occurs, preserve trace and attribution

## output_model
Outputs must distinguish:
- bounded successful asset result
- denied asset result
- review-required asset result
- restricted asset result
- historical asset reference
- safe fallback result

These classes must remain distinct.

## failure_codes
- ASSET_IDENTITY_ERROR
- ASSET_SCOPE_ERROR
- ASSET_STATE_ERROR
- ASSET_BOUNDARY_ERROR
- ASSET_VALIDATION_ERROR
- ASSET_REVIEW_REQUIRED
- ASSET_SAFE_FALLBACK

## observability
The architecture must support reconstruction of:
- which asset was addressed
- which holder or controller context applied
- what validation occurred
- which decision path was chosen
- whether the outcome was current,
  denied,
  restricted,
  historical,
  or escalated

## historical_rules
Historical asset references
must not overwrite current asset truth.
Replay,
historical reference,
and current operation
must remain distinguishable.

## review_checklist
- asset identity is explicit
- control boundary is explicit
- valuation context is explicit
- state model is explicit
- validation rules are explicit
- output model is explicit
- observability is explicit
- historical distinction is explicit

## acceptance_criteria
This architecture is acceptable only when
runtime and policy can derive
asset identity meaning,
control meaning,
valuation meaning,
validation meaning,
and historical meaning
without inventing missing semantics.
