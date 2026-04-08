# ============================================================
# TIME CORE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: time
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical architectural role of time in CivilizationOS.

## design_intent
Time is the bounded reference axis
through which ordering,
duration,
currentness,
historicalness,
scheduling,
and replay distinction
become meaningful.

Time meaning must remain distinct from
mere display formatting
or incidental timestamp rendering.

## architectural_position
The time domain sits between:
- current-state interpretation
- scheduling and delay handling
- historical replay and reference
- map, transport, event, and activity coordination
- audit and trace reconstruction

## required_behavior
- time reference must remain explicit
- current and historical meanings must remain explicit
- scheduled and occurred meanings must remain distinct
- replay and original occurrence meanings must remain distinct
- ambiguous time scope must fail closed

## canonical_rules
- current time must not impersonate historical reference
- replay time must not overwrite original occurrence
- scheduled time must not imply completed occurrence
- historical time records must remain queryable
- ambiguous time scope must fail closed

## state_model
The architecture distinguishes:
- current reference state
- scheduled reference state
- occurred state
- replay or reconstructed state
- historical state
- closed or archived state

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
The time boundary separates:
- canonical time truth
- projected display time
- replay or reconstructed time
- historical time reference
- externalized time representation

Boundary collapse is prohibited.

## validation_rules
Validation must confirm:
- time basis
- state/reference eligibility
- replay or historical mode
- boundary eligibility

No privileged time-sensitive action is valid until validation succeeds.

## decision_matrix
- if time basis is unresolved, stop
- if reference scope is invalid, deny
- if replay or historical meaning is ambiguous, escalate
- if current and historical modes conflict, preserve distinction
- if schedule closes, preserve trace and attribution

## output_model
Outputs must distinguish:
- bounded current-time result
- denied time result
- review-required time result
- replay or historical reference result
- safe fallback result

These classes must remain distinct.

## failure_codes
- TIME_IDENTITY_ERROR
- TIME_SCOPE_ERROR
- TIME_STATE_ERROR
- TIME_BOUNDARY_ERROR
- TIME_VALIDATION_ERROR
- TIME_REVIEW_REQUIRED
- TIME_SAFE_FALLBACK

## observability
The architecture must support reconstruction of:
- what time basis was used
- what reference mode applied
- what validation occurred
- which decision path was chosen
- whether the outcome was current,
  historical,
  replay,
  denied,
  or escalated

## historical_rules
Historical time references
must not overwrite current time truth.
Replay,
historical reference,
and current operation
must remain distinguishable.

## review_checklist
- time basis is explicit
- current/scheduled/historical distinction is explicit
- state model is explicit
- validation rules are explicit
- output model is explicit
- observability is explicit
- historical distinction is explicit

## acceptance_criteria
This architecture is acceptable only when
runtime and policy can derive
time basis meaning,
schedule meaning,
historical meaning,
replay meaning,
validation meaning,
and output meaning
without inventing missing semantics.
