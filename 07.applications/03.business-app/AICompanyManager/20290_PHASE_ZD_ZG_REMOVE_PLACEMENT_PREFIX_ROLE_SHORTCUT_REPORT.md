# AICompanyManager Phase ZD-ZG remove placement-prefix role shortcut report

## Result
- RESULT: PASS
- OPEN_URL: http://127.0.0.1:8794/?v=20260429_053839
- HTTP_CODE: 200

## Fixed
- Removed preview shortcut that treated "Manager配置:" as Manager eligibility.
- Preview now checks the role segment after "対応:".
- Guard now validates BusinessOS DB selection against the target role.
- No DB write.

## Verification
- PREVIEW_MARKER_COUNT: 1
- GUARD_MARKER_COUNT: 1
- PREVIEW_TAIO_COUNT: 1
- GUARD_TAIO_COUNT: 1
- PREFIX_SHORTCUT_COUNT: 0
- GUARD_TARGET_VALID_COUNT: 3
- GUARD_TARGET_INVALID_COUNT: 2
- INDEX_PREVIEW_CACHE_COUNT: 1
- INDEX_GUARD_CACHE_COUNT: 1
- MAIN_JS_MARKER_COUNT: 0
- PREVIEW_NODE_CHECK_RESULT: PASS
- GUARD_NODE_CHECK_RESULT: PASS
- MAIN_NODE_CHECK_RESULT: PASS
- SERVER_NODE_CHECK_RESULT: PASS

## Manual check
Manager payload should become:
- robot: Manager-compatible BusinessOS DB candidate
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
