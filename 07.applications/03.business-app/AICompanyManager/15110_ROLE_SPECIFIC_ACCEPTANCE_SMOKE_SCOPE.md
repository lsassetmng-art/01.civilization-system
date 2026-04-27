# AICompanyManager role-specific acceptance smoke scope

## Target
AICompanyManager strict tenant RLS post-cutover state.

## Test tenant
- COMPANY_ID: 00000000-0000-4000-8000-1db11893cb24
- DEPARTMENT_ID: 00000000-0000-4000-8000-f6d6b5b3d38c
- ORGANIZATION_ID: 00000000-0000-4000-8000-4da5c1a6977e

## Negative tenant
- OTHER_COMPANY_ID: 00000000-0000-4000-8000-deadbeef0000

## Role expectations

### Admin
- Should see current company/departments/organizations and core work rows in current company.

### Manager
- Should see current company/departments/organizations and work rows in assigned scope.

### Leader
- Should see current company/departments/organizations and work rows in assigned scope.

### Worker
- Should see current company/departments/organizations, ledger, and workflow rows in assigned scope.
- May not see review_item/review_action depending on strict policy.

### Reviewer
- Should see current company/departments/organizations and review-related rows in assigned scope.

### Cross-company
- Should not see current company row.

### Missing claims
- Should not see current company row.

## Not executed
- DB DDL
- DB DATA WRITE
- RLS apply
- policy change
- curl
- API call
