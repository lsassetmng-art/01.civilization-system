# AICompanyManager production operations start note

## Operations start
AICompanyManager production release marker is now active.

## First checks after release
1. Confirm app shell loads.
2. Confirm real API/JWT backend integration route works.
3. Confirm Manager can view expected tenant rows.
4. Confirm Worker can view assigned work context.
5. Confirm Reviewer can view review context.
6. Confirm cross-company access returns no tenant rows.
7. Confirm missing claims return no tenant rows.
8. Confirm service_role backend path remains server-only.

## Support note
If users report zero rows:
- check JWT company_id
- check department_ids
- check organization_ids
- check aicm_roles
- check API backend claim mapping
- do not assume data loss

## Do not do without approval
- do not restore smoke-safe policy
- do not disable RLS
- do not drop strict policies
- do not expose service_role token
