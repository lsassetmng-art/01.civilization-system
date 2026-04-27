# AICompanyManager strict tenant RLS non-destructive apply and rollback plan

## Apply principle
Strict tenant RLS must be applied non-destructively.

## Phase 1: design only
Current phase creates exact design only.
No DB execution.

## Phase 2: claim readiness check
Before strict apply:
- Verify JWT contains company_id.
- Verify JWT contains department_ids.
- Verify JWT contains organization_ids where needed.
- Verify JWT contains aicm_roles.
- Verify service_role backend path still works.

## Phase 3: additive strict policies
Add strict policies without dropping smoke-safe policies.
Result:
- strict policies exist.
- smoke-safe authenticated policy still prevents lockout.
- verification can compare expected strict behavior.

## Phase 4: strict shadow verification
Use test users/claims:
- Admin current company
- Manager current department
- Leader current department
- Worker current task scope
- Reviewer current review scope
- user from another company

Verify:
- current company access passes.
- cross-company access fails.
- unauthorized write fails.
- service_role still passes.

## Phase 5: smoke-safe authenticated policy removal
Only after explicit Boss approval:
strict tenant RLS cutover OK

Then remove or supersede:
- aicm_authenticated_all_smoke_safe

Do not remove:
- service_role policy

## Rollback
If strict cutover breaks app access:
1. Recreate or re-enable smoke-safe authenticated policy.
2. Do not disable RLS unless emergency approval exists.
3. Record failed claim/policy condition.
4. Return to strict shadow verification.

## Prohibited
- FORCE ROW LEVEL SECURITY in first strict apply.
- DROP all policies.
- Disable RLS without emergency approval.
- Delete data.
- Recreate target tables.
