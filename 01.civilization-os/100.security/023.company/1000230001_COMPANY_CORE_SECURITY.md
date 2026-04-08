# ============================================================
# COMPANY CORE SECURITY
# ============================================================

status: canonical
layer: security
domain: company
scope: company.core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines security controls for company.

## security_objectives
- protect company identity scope
- protect ownership and role scope
- protect state transition scope
- protect masked company outputs
- prevent privilege widening through company shortcuts

## trust_boundary
Company security distinguishes:
- owner trust position
- operator trust position
- reviewer trust position
- regulator trust position
- adapter trust position

## access_rules
- company identity entitlement must be known
- actor role entitlement must be known
- company state must allow requested action
- output scope must be bounded
- masked company outputs must remain masked

## masking_rules
When masking is required,
company output must remain clearly bounded
and must not resemble full-authority output.

## audit_rules
Security-relevant company actions
must remain auditable
without exposing more than required.

## failure_codes
- COMPANY_SEC_IDENTITY_DENIED
- COMPANY_SEC_ROLE_DENIED
- COMPANY_SEC_STATE_DENIED
- COMPANY_SEC_SCOPE_DENIED
- COMPANY_SEC_MASK_REQUIRED

## review_checklist
- trust boundary is explicit
- access rules are explicit
- masking rules are explicit
- audit rules are explicit
