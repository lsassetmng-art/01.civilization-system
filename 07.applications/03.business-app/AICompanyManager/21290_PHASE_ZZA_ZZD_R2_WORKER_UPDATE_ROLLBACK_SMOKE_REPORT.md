# AICompanyManager Phase ZZA-ZZD-R2 Worker update rollback smoke report

## Result
- RESULT: PASS
- API_BASE: http://127.0.0.1:8795
- HEALTH_HTTP_CODE: 200
- ROLLBACK_HTTP_CODE: 200
- ROLLBACK_OK: YES

## Existing Worker placement
- placement_id: 7d800c4f-a1af-4482-abea-742da7a9b923
- target_level_code: section
- target_scope: section
- target_id: 00000000-0000-4000-8000-4da5c1a6977e
- current robot:  / BYD1-003 / 9dc2af50-6a62-4881-ad41-e34373e50a8e
- nickname: ASIC Workers3

## Rollback update candidate
- next robot: LoVerS 06F Cool / BYD1-003 / 0037ff2b-a8d0-43f9-97d3-9a433352c3a4

## Safety
- Direct /company-robot/update call: NOT EXECUTED
- DB WRITE: ROLLBACK ONLY
- API WRITE: ROLLBACK SMOKE ONLY
- RLS APPLY: NOT EXECUTED
- FORCE RLS: NOT EXECUTED
- DELETE: NOT EXECUTED
- QUANTITY CONSUMPTION: false

## Logs
- VERIFY_LOG: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260429_074356_phase_zza_zzd_r2_worker_update_rollback_smoke/199_worker_update_rollback_smoke_r2_verify.log
- ROLLBACK_PAYLOAD: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260429_074356_phase_zza_zzd_r2_worker_update_rollback_smoke/110_worker_update_rollback_payload.json
- ROLLBACK_RESPONSE: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260429_074356_phase_zza_zzd_r2_worker_update_rollback_smoke/111_worker_update_rollback_response.json
- AIWORKER_API_LOG: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/docs/verification/20260429_074356_phase_zza_zzd_r2_worker_update_rollback_smoke/200_aiworker_api_server.log
