# AICompanyManager final operations and support handoff

## Current status
AICompanyManager production release is active and closeout is complete.

## Normal support checks
1. Confirm user JWT claims.
2. Confirm company_id.
3. Confirm department_ids.
4. Confirm organization_ids.
5. Confirm aicm_roles.
6. Confirm is_company_admin when admin behavior is expected.
7. Confirm API backend maps claims into request.jwt.claims.
8. Confirm service_role paths remain server-side only.

## Common symptom: zero rows in UI
Likely causes:
- missing company_id
- wrong company_id
- missing department_ids
- missing organization_ids
- missing aicm_roles
- backend did not forward claims
- user is correctly denied by strict RLS

Do not assume data loss.

## Common symptom: permission denied
Likely causes:
- missing GRANT
- wrong role
- helper function execute privilege missing
- endpoint running without expected DB role context

## Runtime / secret hygiene
- .env.local must remain untracked.
- runtime files must remain untracked.
- local tokens must not be printed in reports.
- service_role secrets must not reach UI/client code.

## Emergency rollback
Requires explicit Boss approval:
strict tenant RLS cutover rollback OK
