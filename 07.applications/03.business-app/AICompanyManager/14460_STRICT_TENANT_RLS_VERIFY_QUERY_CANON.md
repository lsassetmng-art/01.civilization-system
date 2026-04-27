# AICompanyManager strict tenant RLS verification canon

## Verification categories

### 1. Structure verification
Check target tables:
- RLS enabled.
- service_role policy exists.
- smoke-safe authenticated policy exists before cutover.
- strict policies exist after additive strict apply.

### 2. Claim simulation verification
Use SQL helper or API test tokens to simulate:
- company_id match
- company_id mismatch
- department allowed
- department denied
- role allowed
- role denied

### 3. Table behavior verification
For each target table:
- SELECT allowed row returns row.
- SELECT cross-company row returns zero rows.
- INSERT allowed role succeeds in rollback smoke only.
- INSERT disallowed role fails in rollback smoke only.
- UPDATE allowed role succeeds in rollback smoke only.
- UPDATE disallowed role fails in rollback smoke only.

### 4. Non-destructive verification
Confirm:
- no table recreated
- no data deleted
- no broad policy dropped before cutover approval
- service_role still works

## Future read-only verification query concepts

### RLS enabled count
Check relrowsecurity on all AICompanyManager target tables.

### Policy existence count
Check pg_policies for strict policy names.

### Smoke-safe policy still present before cutover
Check aicm_authenticated_all_smoke_safe exists until cutover.

### Cross-company deny test
Use a test token or test role context with mismatched company_id and verify zero rows.

## Required output format for future apply phase
- RESULT: PASS or FAIL
- TARGET_TABLE_COUNT
- RLS_ENABLED_COUNT
- STRICT_POLICY_COUNT
- SERVICE_ROLE_POLICY_COUNT
- SMOKE_SAFE_POLICY_PRESENT
- CROSS_COMPANY_DENY_PASS
- ROLLBACK_SCRIPT_PATH
