# ============================================================
# 0600100002 WORK ENTITY INTEGRATION
# ============================================================

status: canonical
layer: integration
domain: 0600100002
scope: 0600100002.work.entity.integration
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines integration behavior for 0600100002 WORK ENTITY INTEGRATION.

## integration_scope
Integration covers inbound/outbound contracts,
state transmission,
validation transmission,
compatibility handling,
and bounded failure behavior.

## contract_boundary
This subject may receive and emit contracts,
but must not redefine source truth authority.

## input_output_model
Inputs must declare identity,
role,
activity or state intent,
and output expectation.
Outputs must preserve bounded meaning.

## validation_rules
- contract shape must be valid
- identity scope must be valid
- role scope must be valid
- activity/boundary scope must be valid
- incompatible contracts must fail closed

## idempotency_rules
Repeated equivalent requests
must not create contradictory outcomes.

## compatibility_rules
Compatibility handling must remain explicit
and must not silently widen meaning.

## retry_boundary
Retry may reattempt transport or delivery,
but must not invent new authority or hidden side effects.

## failure_codes
- SUBJECT_INT_SCHEMA_MISMATCH
- SUBJECT_INT_IDENTITY_CONFLICT
- SUBJECT_INT_ROLE_CONFLICT
- SUBJECT_INT_BOUNDARY_CONFLICT
- SUBJECT_INT_COMPATIBILITY_DENIED

## observability
Integration logs must expose
contract mode,
identity scope,
role scope,
boundary scope,
and failure reason.

## review_checklist
- integration scope is explicit
- contract boundary is explicit
- validation is explicit
- compatibility is explicit
- retry boundary is explicit

## acceptance_criteria
This integration subject is accepted only when
contract shape,
identity scope,
role scope,
boundary scope,
compatibility handling,
and bounded failure behavior
are all explicit and reviewable.
