# AICompanyManager DDL/RLS Candidate Issue List

phase: Phase EH
status: ddl-rls-candidate-issue-list
db_apply: false
rls_apply: false

## 1. Issue一覧

| No | Severity | Area | Issue | Proposed handling |
|---:|---|---|---|---|
| 1 | High | DDL | gen_random_uuid requires pgcrypto | Add extension precheck or create extension step |
| 2 | High | RLS/bootstrap | First owner membership cannot be created only by membership RLS | Add bootstrap RPC or service-role endpoint |
| 3 | High | API/RPC | review action can be double executed | Add idempotency and status transition guard |
| 4 | Medium | DDL | aiworker_robot_id type may differ from aiworker schema | Confirm aiworker robot canonical ID type |
| 5 | Medium | company delete | Physical delete policy is not defined | Prefer archive flow or admin RPC |
| 6 | Medium | file storage | file metadata exists but real storage policy is not fixed | Keep metadata_only until storage policy is decided |
| 7 | Medium | workflow | workflow_run exists but live AIWorkerOS boundary is not fixed | Keep local_stub until boundary review |
| 8 | Medium | RLS | service role / RPC boundary not described in SQL | Add separate API/RPC boundary doc before real API |
| 9 | Low | audit | updated_at auto update trigger not included | Add trigger candidate or handle in API |
| 10 | Low | seed | initial company/department seed not included | Keep no seed unless Boss requests |

## 2. Must fix before apply

Must fix or explicitly accept:
- Issue 1
- Issue 2
- Issue 3
- Issue 4

## 3. May defer to API phase

May defer:
- Issue 5
- Issue 6
- Issue 7
- Issue 8
- Issue 9
- Issue 10

## 4. Current recommendation

Do not apply current candidate as-is.

Recommended next:
- create refined DDL/RLS candidate v2
- add bootstrap strategy
- add idempotency strategy
- confirm aiworker_robot_id type
