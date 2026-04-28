# AICompanyManager Phase ZL-ZO payload OK combined rollback smoke report

## Result
- RESULT: PASS
- UI_URL: http://127.0.0.1:8794/?v=20260429_055830
- API_BASE: http://127.0.0.1:8795
- UI_HTTP_CODE: 200
- HEALTH_HTTP_CODE: 200
- ROLLBACK_HTTP_CODE: 200
- ROLLBACK_OK: YES

## Payload preview closeout
- President: OK by manual screenshot confirmation.
- Manager: OK by manual screenshot confirmation.
- Leader: OK by manual screenshot confirmation.
- Worker: OK by manual screenshot confirmation.

## Source readiness
- PREVIEW_NODE_CHECK_RESULT: PASS
- GUARD_NODE_CHECK_RESULT: PASS
- POOL_NODE_CHECK_RESULT: PASS
- BINDING_NODE_CHECK_RESULT: PASS
- MAIN_NODE_CHECK_RESULT: PASS
- UI_SERVER_NODE_CHECK_RESULT: PASS
- AIWORKER_API_NODE_CHECK_RESULT: PASS

## Required markers
- FINAL_NORMALIZER_COUNT: 1
- MANAGER_ALLOW_COUNT: 1
- ROLE_SEGMENT_COUNT: 1
- STRICT_VALIDATION_COUNT: 2

## Execution flags
- DB WRITE: ROLLBACK ONLY
- DB DDL: NOT EXECUTED
- API WRITE: ROLLBACK SMOKE ONLY
- RLS APPLY: NOT EXECUTED
- FORCE RLS: NOT EXECUTED
- DELETE: NOT EXECUTED
- QUANTITY CONSUMPTION: NOT EXECUTED
