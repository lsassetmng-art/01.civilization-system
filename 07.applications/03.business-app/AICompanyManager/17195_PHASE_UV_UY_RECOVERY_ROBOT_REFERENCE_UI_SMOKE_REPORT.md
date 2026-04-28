# AICompanyManager Phase UV-UY-RECOVERY robot reference UI smoke report

## Result
- RESULT: FAIL
- PSQL_CODE: 0

## Recovery reason
Previous UV-UY stopped with code 3, likely due to psql read error.
This recovery uses robust read-only SQL and always writes logs.

## Artifacts
- SQL_FILE: /data/data/com.termux/files/home/.tmp/AICompanyManager/20260428_170536_phase_uv_uy_recovery_robot_reference_ui_smoke/010_robot_reference_recovery_readonly.sql
- DB_LOG: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260428_170536_phase_uv_uy_recovery_robot_reference_ui_smoke/020_robot_reference_recovery_psql.log
- HTML_FILE: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260428_170536_phase_uv_uy_recovery_robot_reference_ui_smoke/030_robot_reference_recovery_ui_smoke.html
- VERIFY_SUMMARY: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260428_170536_phase_uv_uy_recovery_robot_reference_ui_smoke/090_robot_reference_recovery_verify_summary.md

## Counts
- OBJECT_COUNT: 0
- COUNT_COUNT: 0
- COLUMN_COUNT: 0
- SAMPLE_COUNT: 0
- ERROR_COUNT: 18

## Execution flags
- DB WRITE: NOT EXECUTED
- DB DDL: NOT EXECUTED
- psql: EXECUTED READ ONLY
- API WRITE: NOT EXECUTED
- RLS APPLY: NOT EXECUTED
- EXISTING UI SOURCE CHANGE: NOT EXECUTED
