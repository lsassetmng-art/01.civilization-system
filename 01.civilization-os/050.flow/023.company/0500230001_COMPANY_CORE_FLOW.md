# ============================================================
# COMPANY CORE FLOW
# ============================================================

status: canonical
layer: flow
domain: company
scope: company.core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines core flow logic for company.

## request_entry
Company flow may begin from:
- company creation
- company update
- company state review
- operator action
- market/work/trade-linked request
- integration-triggered request

## preconditions
- company identity is resolvable or creatable
- actor role is resolvable
- state context is available
- requested activity is declared
- boundary context is known

## validation_rules
- identity check
- role check
- state check
- activity check
- boundary check

## normal_flow
1. enter company path
2. resolve identity
3. resolve actor role
4. resolve current company state
5. validate requested action
6. execute bounded action
7. render bounded result

## exception_flow
If identity,
role,
state,
activity,
or boundary becomes invalid,
the flow must stop normal execution
and route to explicit denial or review.

## outputs
- company read output
- company update output
- review-required output
- approval-required output
- safe failure output

## failure_codes
- COMPANY_FLOW_IDENTITY_ERROR
- COMPANY_FLOW_ROLE_ERROR
- COMPANY_FLOW_STATE_ERROR
- COMPANY_FLOW_BOUNDARY_ERROR
- COMPANY_FLOW_VALIDATION_STOP

## review_checklist
- request entry is explicit
- state-aware flow is explicit
- exception flow is explicit
- outputs are explicit
