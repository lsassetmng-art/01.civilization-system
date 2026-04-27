# AICompanyManager Phase TI-TL robot UI screen placement repair report

## Result
- RESULT: PASS

## Fixed issue
Robot settings were visible directly on dashboard.

## Corrected behavior
- Dashboard shows status/navigation only.
- AI企業設定 contains President robot setting and company policy instruction.
- 組織詳細 contains organization cards and robot add actions.
- Organization robot selection uses Business registered robot catalog local mirror.
- Superseded dashboard-level robot panels are hidden.

## Files
- INDEX_FILE: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/index.html
- JS_FILE: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/assets/js/phase-de-dh-workflow-final-local-ui.js
- VERIFY_LOG: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260427_153709_phase_ti_tl_robot_ui_screen_placement_repair/010_robot_ui_screen_placement_repair_verify.log
- TEST_SH: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/tests/phase_ti_tl_robot_ui_screen_placement_repair_check.sh

## Verification
- SCRIPT_COUNT: 1
- PLACEMENT_PATCH_COUNT: 1
- ROUTER_COUNT: 2
- DASHBOARD_LABEL_COUNT: 2
- COMPANY_SETTINGS_LABEL_COUNT: 25
- ORG_DETAIL_LABEL_COUNT: 9
- HIDE_SUPERSEDED_COUNT: 1

## Execution flags
- DB WRITE: NOT EXECUTED
- psql: NOT EXECUTED
- API WRITE: NOT EXECUTED
- RLS APPLY: NOT EXECUTED
- POLICY CHANGE: NOT EXECUTED
- index.html script count: 1 maintained
