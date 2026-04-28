# AICompanyManager Phase ZH-ZK final payload role-compatible model normalizer report

## Result
- RESULT: PASS
- OPEN_URL: http://127.0.0.1:8794/?v=20260429_055048
- HTTP_CODE: 200

## Fixed
- Added final payload role-compatible model normalizer.
- Manager payload allowlist: HD-R5 / BYD2-002 / BYD2-003.
- HD-R4 is excluded from Manager payload.
- No DB write.

## Verification
- NORMALIZER_MARKER_COUNT: 1
- NORMALIZER_CALL_COUNT: 2
- MANAGER_ALLOW_COUNT: 1
- HD_R4_MANAGER_ALLOW_COUNT: 0
- OPTION_SOURCE_COUNT: 1
- STATE_SOURCE_COUNT: 1
- INDEX_CACHE_COUNT: 1
- MAIN_JS_MARKER_COUNT: 0
- PREVIEW_NODE_CHECK_RESULT: PASS
- MAIN_NODE_CHECK_RESULT: PASS
- SERVER_NODE_CHECK_RESULT: PASS

## Manual check
Manager payload should become:
- robot: HD-R5 / BYD2-002 / BYD2-003 candidate
- not: Leader / HD-R4
- robot status: OK_ROBOT_SELECTED
- validation: OK_STRICT_PREVIEW_VALIDATION
- warning: -
- status: PREVIEW_ONLY_CANONICAL_OK

## Execution flags
- DB WRITE: NOT EXECUTED
- DB DDL: NOT EXECUTED
- psql: NOT EXECUTED DIRECTLY
- API WRITE: NOT EXECUTED
- RLS APPLY: NOT EXECUTED
- MAIN UI JS CHANGE: NOT EXECUTED
- QUANTITY CONSUMPTION: NOT EXECUTED
