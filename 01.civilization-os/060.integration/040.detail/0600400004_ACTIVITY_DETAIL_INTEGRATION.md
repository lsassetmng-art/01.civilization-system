# ============================================================
# 0600400004 ACTIVITY DETAIL INTEGRATION
# ============================================================

status: canonical
layer: integration
domain: detail
scope: 0600400004.activity.detail.integration
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the integration contract handling for 0600400004 ACTIVITY DETAIL INTEGRATION
within the 040.detail domain.

## integration_scope
This document governs inbound and outbound handling,
contract boundaries,
compatibility expectations,
and idempotent interpretation.

## contract_boundary
The integration layer may transport or expose detail,
but it must not redefine detail truth authority.

## input_output_model
Inputs must declare subject,
mode,
authority basis,
and target intent.
Outputs must preserve semantic clarity
between current,
historical,
replay,
and projected forms.

## validation_rules
- contract version must be known
- subject mapping must resolve
- authority source must be compatible
- output mode must be declared
- incompatible targets must fail closed

## idempotency_rules
Repeated delivery of the same effective request
must not create contradictory detail outcomes.

## compatibility_rules
Compatibility handling must be explicit
and must not silently widen authority meaning.

## retry_boundary
Retry may re-attempt transport,
but retry must not duplicate truth creation
or erase failure meaning.

## failure_codes
- DETAIL_INTEGRATION_SCHEMA_MISMATCH
- DETAIL_INTEGRATION_AUTHORITY_MISMATCH
- DETAIL_INTEGRATION_TARGET_INCOMPATIBLE
- DETAIL_INTEGRATION_IDEMPOTENCY_CONFLICT
- DETAIL_INTEGRATION_RETRY_BLOCKED

## observability
Integration logs must make contract mode,
compatibility choice,
retry state,
and failure reason reviewable.

## review_checklist
- contract boundary is explicit
- validation is explicit
- compatibility is explicit
- idempotency is explicit
- retry boundary is explicit

## state_model
Integration-visible detail must keep
current,
historical,
replay,
and projected forms
semantically separated.
Contract transport must not collapse these distinctions.

## transition_rules
A contract transition must record
input mode,
authority basis,
compatibility choice,
and resulting output mode.
Any ambiguity must stop the transition.

## actor_matrix
- source system provides contract truth basis
- integration layer transports compatible structure
- target consumer receives declared mode only
- retry path reattempts transport without inventing truth
- reviewer inspects mismatches and conflicts

## review_notes
This document is acceptable only when
contract boundaries,
compatibility handling,
and idempotent interpretation
can be reviewed from the written rules alone.
