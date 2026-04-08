# ============================================================
# MAP CORE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: map
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical architectural role of map in CivilizationOS.

## design_intent
Map is the bounded spatial-reference structure
through which position,
territory,
adjacency,
route relation,
projection,
and historical spatial continuity
become meaningful.

Map meaning must remain distinct from
mere image projection
or incidental coordinate display.

## architectural_position
The map domain sits between:
- authoritative location truth
- route and adjacency relation
- transport and housing linkage
- nation and territory relation
- historical spatial reference

## required_behavior
- spatial context must remain explicit
- authoritative and projected map meanings must remain distinct
- current and historical map states must remain distinct
- route and adjacency meanings must remain explicit
- ambiguous spatial scope must fail closed

## canonical_rules
- visual map projection must not overwrite authoritative location truth
- route projection must not imply completed movement
- restricted map output must remain identifiable
- historical map records must remain queryable
- ambiguous spatial scope must fail closed

## state_model
The architecture distinguishes:
- current authoritative spatial state
- projected map state
- restricted spatial state
- route or adjacency relation state
- historical spatial state
- archived spatial state

Each state must remain semantically distinct.

## actor_matrix
The domain may involve:
- source actor
- operating actor
- reviewing actor
- observing actor
- integration adapter

Each role must remain distinguishable in meaning and effect.

## boundary_model
The map boundary separates:
- authoritative spatial truth
- projected map representation
- restricted map representation
- historical map reference
- externalized map representation

Boundary collapse is prohibited.

## validation_rules
Validation must confirm:
- spatial identity basis
- route or adjacency scope
- boundary eligibility
- historical or reference mode where applicable

No privileged map-sensitive action is valid until validation succeeds.

## decision_matrix
- if spatial basis is unresolved, stop
- if spatial scope is invalid, deny
- if route, adjacency, or boundary meaning is ambiguous, escalate
- if historical mode is requested, preserve historical distinction
- if archive occurs, preserve trace and attribution

## output_model
Outputs must distinguish:
- bounded successful map result
- denied map result
- review-required map result
- restricted map result
- historical map reference
- safe fallback result

These classes must remain distinct.

## failure_codes
- MAP_IDENTITY_ERROR
- MAP_SCOPE_ERROR
- MAP_STATE_ERROR
- MAP_BOUNDARY_ERROR
- MAP_VALIDATION_ERROR
- MAP_REVIEW_REQUIRED
- MAP_SAFE_FALLBACK

## observability
The architecture must support reconstruction of:
- what spatial basis was addressed
- what route or adjacency context applied
- what validation occurred
- which decision path was chosen
- whether the outcome was current,
  denied,
  restricted,
  historical,
  or escalated

## historical_rules
Historical map references
must not overwrite current map truth.
Replay,
historical reference,
and current operation
must remain distinguishable.

## review_checklist
- spatial context is explicit
- authoritative/projection distinction is explicit
- route/adjacency meaning is explicit
- state model is explicit
- validation rules are explicit
- output model is explicit
- observability is explicit
- historical distinction is explicit

## acceptance_criteria
This architecture is acceptable only when
runtime and policy can derive
spatial meaning,
projection meaning,
route meaning,
validation meaning,
and historical meaning
without inventing missing semantics.
