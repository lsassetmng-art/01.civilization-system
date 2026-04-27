# AICompanyManager final production operations runbook

## Normal operation
- authenticated users must carry correct tenant and role claims
- backend service routes may use service_role where appropriate
- UI should treat zero rows under missing claims as auth/config issue, not data loss

## Required claims
- company_id
- department_ids
- organization_ids
- aicm_roles
- is_company_admin
- app_user_id

## Monitoring points
- permission denied for schema business
- permission denied for table business.aicm_*
- RLS zero-row access surprises
- missing request.jwt.claims
- cross-company deny logs
- service_role route failures
- live AIWorkerOS endpoint runtime logs

## Support triage
1. Confirm user JWT claims.
2. Confirm company_id matches expected tenant.
3. Confirm department_ids includes assigned department.
4. Confirm organization_ids includes assigned organization.
5. Confirm aicm_roles includes required role.
6. Confirm service_role backend path is not used from client.
7. If required, run read-only verification script.

## Do not do during normal support
- disable RLS
- restore smoke-safe policy without Boss approval
- expose service_role token
- commit .env.local
- commit runtime logs
