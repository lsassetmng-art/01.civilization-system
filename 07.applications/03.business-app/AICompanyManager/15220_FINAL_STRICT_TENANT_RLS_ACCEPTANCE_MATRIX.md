# AICompanyManager final strict tenant RLS acceptance matrix

## Accepted smoke chain

| Area | Result |
|---|---|
| persistent write chain | PASS |
| CSV import smoke | PASS |
| workflow start smoke | PASS |
| live AIWorkerOS call smoke | PASS |
| first real use | PASS |
| env/runtime hygiene | PASS |
| local token rotation record | PASS |
| smoke-safe RLS apply | PASS |
| strict tenant RLS exact design | PASS |
| Sato DB review | PASS |
| strict tenant RLS shadow apply | PASS |
| strict tenant RLS cutover | PASS |
| API/JWT grant repair | PASS |
| JWT claim simulation | PASS |
| role-specific acceptance smoke | PASS |
| final strict tenant RLS acceptance | PASS |

## Role-specific acceptance

| Role / case | Acceptance |
|---|---|
| Admin | VERIFIED |
| Manager | VERIFIED |
| Leader | VERIFIED |
| Worker | VERIFIED |
| Reviewer | VERIFIED |
| Cross-company deny | VERIFIED |
| Missing claims deny | VERIFIED |

## Security posture

| Item | Final state |
|---|---|
| aicm_authenticated_all_smoke_safe | REMOVED |
| aicm_service_role_all | PRESENT |
| aicm_*_strict policies | PRESENT |
| business.aicm_jwt* helpers | PRESENT |
| RLS enabled | YES |
| FORCE RLS | NOT USED |
| DB data rewrite | NOT USED |
