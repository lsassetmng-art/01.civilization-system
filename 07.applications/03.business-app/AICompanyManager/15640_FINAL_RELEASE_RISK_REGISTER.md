# AICompanyManager final release risk register

## Risk 1: real production JWT claims differ from smoke claims
Severity: High  
Mitigation:
- run production-like API/JWT claim inspection before launch
- confirm company_id / department_ids / organization_ids / aicm_roles / is_company_admin

## Risk 2: UI shows zero rows due to missing claims
Severity: High  
Mitigation:
- UI login smoke
- backend claim mapping test
- clear error display for missing claims

## Risk 3: role write paths fail in production UI
Severity: Medium  
Mitigation:
- role-specific write rollback smoke already passed at DB level
- run UI/API write rollback smoke before final launch

## Risk 4: previous token existed in git history
Severity: Medium  
Mitigation:
- latest tracking fixed
- local token rotated
- if old token was real, revoke provider-side
- history rewrite not executed in this chain

## Risk 5: rollback misuse
Severity: Medium  
Mitigation:
- rollback requires explicit Boss approval
- do not disable RLS casually
- do not drop strict policies
- use rollback runbook

## Risk 6: service_role misuse
Severity: High  
Mitigation:
- keep service_role secret server-side only
- never expose service_role to UI/client
- audit backend routes
