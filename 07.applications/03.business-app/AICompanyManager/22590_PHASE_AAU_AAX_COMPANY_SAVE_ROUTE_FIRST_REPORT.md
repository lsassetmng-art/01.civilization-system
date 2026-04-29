# AICompanyManager Phase AAU-AAX Company Save Route First Report

## Result
- RESULT: PASS

## Fixed direction
- Company save route now comes before robot placement save route.
- Unstable robot role-button save binding is disabled until DB company_id is canonical.
- Generic DB本保存 buttons are removed at runtime.

## New route
- Company write API: http://127.0.0.1:8796/api/aicm/company/save
- Company browser client: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/assets/js/aicm-company-persistent-save-client.js
- Company save buttons:
  - 会社を追加
  - 会社を変更

## DB behavior
- This script executed rollback smoke only.
- Real save occurs only when user presses 会社を追加 / 会社を変更 in the UI.

## Verification
- COMPANY_API_NODE_RESULT: PASS
- COMPANY_CLIENT_NODE_RESULT: PASS
- UI_SERVER_NODE_RESULT: PASS
- COMPANY_ROLLBACK_RESULT: PASS
- UI_HTTP_CODE: 200
- COMPANY_HTTP_CODE: 200

## Execution flags
- DB WRITE: ROLLBACK ONLY
- API WRITE: ROLLBACK SMOKE ONLY
- RLS APPLY: NOT EXECUTED
- FORCE RLS: NOT EXECUTED
- DELETE: NOT EXECUTED

## Save destination
- BusinessOS DB company table, dynamically detected.

## Next
1. Open UI.
2. Use 会社を追加 or 会社を変更.
3. Confirm company_id is saved and displayed.
4. Reconnect President placement save using canonical company_id.

## Logs
- VERIFY_LOG: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260429_115446_phase_aau_aax_company_save_route_first/090_company_save_route_first_verify.log
- COMPANY_TABLE_INVENTORY_LOG: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260429_115446_phase_aau_aax_company_save_route_first/045_company_table_inventory.log
- COMPANY_ROLLBACK_SMOKE_LOG: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260429_115446_phase_aau_aax_company_save_route_first/070_company_save_rollback_smoke.log
- UI_LOG: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260429_115446_phase_aau_aax_company_save_route_first/080_ui_server.log
- COMPANY_API_LOG: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260429_115446_phase_aau_aax_company_save_route_first/081_company_api_server.log
