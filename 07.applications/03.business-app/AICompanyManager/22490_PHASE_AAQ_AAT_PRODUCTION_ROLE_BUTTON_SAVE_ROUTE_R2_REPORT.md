# AICompanyManager Phase AAQ-AAT Production Role Button Save Route R2 Report

## Result
- RESULT: PASS

## Fixed
- Payload-preview-dependent save route removed.
- Role buttons now build payload directly from selected BusinessOS DB candidate.
- Existing saved placement is shown in select as 保存済み display-only option.
- Save is blocked when the select is placeholder or existing-display-only.
- Generic DB本保存 button remains removed.

## Connected buttons
- Presidentを設定
- Managerを設定
- Leaderを設定
- Workerを追加
- この配置を変更

## Save route
- Candidate source: business.robot_pool
- Save destination: business.company_robot_placement
- Write API: http://127.0.0.1:8795/api/aicm/company-robot-placement/save

## Verification
- SAVE_CLIENT_NODE_RESULT: PASS
- WRITE_API_NODE_RESULT: PASS
- UI_SERVER_NODE_RESULT: PASS
- INDEX_SCRIPT_COUNT: 1
- DIRECT_SELECT_MARKER_COUNT: 2
- UI_HTTP_CODE: 200
- WRITE_HTTP_CODE: 200

## Execution flags
- DB WRITE: NOT EXECUTED
- API SAVE: NOT EXECUTED
- RLS APPLY: NOT EXECUTED
- DELETE: NOT EXECUTED
- quantity_consumption: false

## Manual confirmation
Open UI and confirm:
1. DB本保存 button is not shown.
2. Existing saved values appear as 保存済み in select.
3. Pressing a role button while 保存済み is selected does not save and asks to select a candidate.
4. Selecting a BusinessOS DB candidate and pressing the role button saves.
5. After reload, the saved value remains visible.

## URL
- http://127.0.0.1:8794/?v=20260429_114922_production_role_button_save_r2

## Logs
- VERIFY_LOG: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260429_114922_phase_aaq_aat_production_role_button_save_route_r2/090_production_role_button_save_route_r2_verify.log
- UI_LOG: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260429_114922_phase_aaq_aat_production_role_button_save_route_r2/050_ui_server.log
- WRITE_LOG: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260429_114922_phase_aaq_aat_production_role_button_save_route_r2/060_write_api_server.log
