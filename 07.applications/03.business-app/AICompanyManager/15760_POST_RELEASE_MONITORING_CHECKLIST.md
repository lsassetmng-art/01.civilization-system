# AICompanyManager post-release monitoring checklist

## Monitor for
- permission denied for schema business
- permission denied for business.aicm_* tables
- zero-row surprises after login
- missing JWT claims
- wrong company_id claim
- missing department_ids / organization_ids
- missing aicm_roles
- cross-company deny failures
- service_role misuse
- runtime files accidentally staged
- .env.local accidentally staged

## Expected healthy behavior
- valid Manager/Leader/Worker/Reviewer claims work within tenant scope
- cross-company claims do not see tenant rows
- missing claims do not see tenant rows
- write operations follow role boundaries
- rollback smoke leaves no persistent rows

## Escalation
If strict RLS blocks critical production usage:
1. stop new risky operations
2. collect JWT claim sample without exposing secrets
3. run read-only verification
4. request Boss decision before rollback

## Rollback approval phrase
strict tenant RLS cutover rollback OK
