# AICompanyManager strict tenant RLS cutover rollback note

## Rollback status
Rollback was not executed.

## Rollback condition
Rollback requires explicit Boss approval:

strict tenant RLS cutover rollback OK

## Rollback action
Recreate aicm_authenticated_all_smoke_safe on AICompanyManager target tables.

## Rollback purpose
Restore broad authenticated smoke-safe access if strict tenant RLS blocks required application access.

## Important
Rollback should be temporary.
After rollback, fix JWT claims or strict policy conditions and perform another shadow verification before cutover again.

## Prohibited without approval
- disabling RLS
- dropping strict policies
- dropping service_role policies
- table recreation
- data deletion
