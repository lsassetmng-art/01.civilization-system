# AICompanyManager Phase YN-YQ legacy local robot selection guard report

## Result
- RESULT: PASS
- OPEN_URL: http://127.0.0.1:8794/?v=20260429_052115
- HTTP_CODE: 200

## Added
- Legacy local robot selection guard.
- Invalid local selections are repaired to first valid BusinessOS DB option for same role.
- Valid BusinessOS DB selections are not overwritten.
- Manager legacy selection repair is expected.

## Verification
- GUARD_INCLUDE_COUNT: 1
- GUARD_MARKER_COUNT: 2
- LEGACY_CHECK_COUNT: 2
- BUSINESSOS_CHECK_COUNT: 3
- UUID_CHECK_COUNT: 3
- MANAGER_SELECT_COUNT: 1
- REPAIR_COUNT: 2
- INDEX_CACHE_COUNT: 1
- MAIN_JS_MARKER_COUNT: 0
- GUARD_NODE_CHECK_RESULT: PASS
- PREVIEW_NODE_CHECK_RESULT: PASS
- BINDING_NODE_CHECK_RESULT: PASS
- POOL_NODE_CHECK_RESULT: PASS
- SYNC_NODE_CHECK_RESULT: PASS
- MAIN_NODE_CHECK_RESULT: PASS
- SERVER_NODE_CHECK_RESULT: PASS

## Manual check
Manager payload should become:
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
