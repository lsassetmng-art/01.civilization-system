# AICompanyManager strict tenant RLS operations note

## Required JWT claims
Clients/API sessions must provide:
- company_id
- department_ids
- organization_ids
- aicm_roles
- is_company_admin when applicable

## Expected access behavior
- Valid tenant + role claim can access allowed tenant rows.
- Cross-company claims cannot access current company rows.
- Missing claims cannot access tenant rows.
- service_role remains available for backend/server operations.

## Operational warning
The broad authenticated smoke-safe policy has been removed.
If UI/API calls do not include correct claims, rows may appear missing or writes may be rejected.

## Recovery path
If strict tenant RLS blocks required access, do not disable RLS casually.
Use the documented rollback gate:
strict tenant RLS cutover rollback OK

## Recommended next operational checks
- real API token claim test
- real UI login smoke
- department/organization role switching
- audit log review
- service_role backend route smoke
