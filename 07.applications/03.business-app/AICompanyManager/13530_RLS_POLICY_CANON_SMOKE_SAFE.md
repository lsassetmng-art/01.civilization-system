# AICompanyManager smoke-safe RLS policy canon

## Policy class
Smoke-safe initial policy.

## Purpose
Enable RLS on AICompanyManager tables while preventing accidental total lockout during current implementation smoke.

## Policies

### aicm_service_role_all
- FOR ALL
- TO service_role, when role exists
- USING true
- WITH CHECK true

### aicm_authenticated_all_smoke_safe
- FOR ALL
- TO authenticated, when role exists
- USING true
- WITH CHECK true

## Why not strict company scope now
The current live smoke work has not yet fixed final JWT claim structure and tenant claim mapping.
Applying strict company-scope RLS before claim design may break UI/API access.

## Future strict phase
A later phase should replace or supersede smoke-safe policy with company-scoped policies using canonical JWT claims or app-side membership mapping.

## Prohibited in this phase
- DROP POLICY
- FORCE ROW LEVEL SECURITY
- disabling existing access required for current smoke
