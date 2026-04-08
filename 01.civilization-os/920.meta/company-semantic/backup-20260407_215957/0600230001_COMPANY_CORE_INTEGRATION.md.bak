# ============================================================
# COMPANY CORE INTEGRATION
# ============================================================

status: canonical
layer: integration
domain: company
scope: company.core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines integration behavior for company.

## integration_scope
Integration covers inbound/outbound company contracts,
state exchange,
role-aware exchange,
validation exchange,
and bounded failure behavior.

## contract_boundary
Company may transmit and receive company-related contracts,
but external systems must not seize company truth authority.

## input_output_model
Inputs must declare
company identity or company creation context,
actor role context,
requested activity or state transition,
and output expectation.

Outputs must preserve
bounded company meaning,
bounded authority meaning,
and bounded state meaning.

## validation_rules
- contract shape must be valid
- company identity scope must be valid
- actor role scope must be valid
- company state scope must be valid
- boundary scope must be valid

## idempotency_rules
Equivalent company requests
must not create contradictory company state.

## compatibility_rules
Compatibility handling must remain explicit
and must not silently reinterpret company authority or state.

## retry_boundary
Retry may reattempt transport or delivery,
but retry must not invent ownership,
authority,
or hidden side effects.

## failure_codes
- COMPANY_INT_SCHEMA_MISMATCH
- COMPANY_INT_IDENTITY_CONFLICT
- COMPANY_INT_ROLE_CONFLICT
- COMPANY_INT_STATE_CONFLICT
- COMPANY_INT_BOUNDARY_CONFLICT

## observability
Integration logs must expose
contract mode,
company identity scope,
state scope,
role scope,
boundary scope,
and failure reason.

## review_checklist
- contract boundary is explicit
- validation is explicit
- compatibility rules are explicit
- retry boundary is explicit
