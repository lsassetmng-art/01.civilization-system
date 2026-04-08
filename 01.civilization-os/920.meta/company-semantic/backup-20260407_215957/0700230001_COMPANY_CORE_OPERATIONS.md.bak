# ============================================================
# COMPANY CORE OPERATIONS
# ============================================================

status: canonical
layer: operations
domain: company
scope: company.core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines operational handling for company.

## operational_scope
Operations covers company state review,
identity review,
boundary review,
activity review,
failure review,
and escalation handling.

## required_behavior
- operational checkpoints must be explicit
- company lifecycle checkpoints must be explicit
- review surfaces must be explicit
- escalation behavior must be explicit
- audit usefulness must remain preserved

## runbook
1. identify company and current state
2. confirm ownership and actor role context
3. confirm requested activity and boundary
4. confirm validation outcome
5. route to success, review, restriction, or failure
6. close with explicit company status

## retry_rules
Retry may be used only where explicitly allowed
and must not widen hidden authority.

## escalation_rules
Ambiguous identity,
ambiguous ownership,
ambiguous state,
or ambiguous boundary
must escalate to review rather than self-heal.

## audit_requirements
Operational handling must preserve enough evidence
to reconstruct effective authority,
requested activity,
state transition,
and final outcome.

## failure_codes
- COMPANY_OP_STATE_GAP
- COMPANY_OP_ROLE_GAP
- COMPANY_OP_BOUNDARY_GAP
- COMPANY_OP_VALIDATION_GAP
- COMPANY_OP_REVIEW_REQUIRED

## review_checklist
- lifecycle runbook is explicit
- escalation path is explicit
- audit usefulness is explicit
- closure status is explicit
