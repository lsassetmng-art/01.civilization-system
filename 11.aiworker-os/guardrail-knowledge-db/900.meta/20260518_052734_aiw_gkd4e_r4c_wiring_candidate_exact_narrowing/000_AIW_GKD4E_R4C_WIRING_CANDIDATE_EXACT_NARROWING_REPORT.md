# AIWorkerOS Guardrail Knowledge DB GKD-4E-R4C Wiring Candidate Exact Narrowing Report

FINAL_STATUS=RUNNING
PHASE=GKD-4E-R4C_WIRING_CANDIDATE_EXACT_NARROWING
GIT_ROOT=/data/data/com.termux/files/home/03.civilization-development
AIW_ROOT=/data/data/com.termux/files/home/03.civilization-development/11.aiworker-os
RUNTIME_ROOT=/data/data/com.termux/files/home/03.civilization-development/11.aiworker-os/runtime-execution-http-api
LATEST_R4B_DIR=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260518_052326_aiw_gkd4e_r4b_exact_boundary_extraction
RUN_DIR=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260518_052734_aiw_gkd4e_r4c_wiring_candidate_exact_narrowing

GUARDS:
- DB_WRITE=NO
- API_POST=NO
- CODE_PATCH=NO
- GIT_PUSH=NO

PURPOSE:
- Narrow R4B candidates.
- Produce R5 wiring decision.
- Do not patch.

## Outputs

SOURCE_STATUS=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260518_052734_aiw_gkd4e_r4c_wiring_candidate_exact_narrowing/020_source_status.tsv
HIGH_SIGNAL_LINES=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260518_052734_aiw_gkd4e_r4c_wiring_candidate_exact_narrowing/030_high_signal_lines.tsv
CLUSTERED_CANDIDATES=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260518_052734_aiw_gkd4e_r4c_wiring_candidate_exact_narrowing/040_clustered_candidates.tsv
TOP_CONTEXT=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260518_052734_aiw_gkd4e_r4c_wiring_candidate_exact_narrowing/050_top_candidate_context.md
R5_DECISION=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260518_052734_aiw_gkd4e_r4c_wiring_candidate_exact_narrowing/060_r5_wiring_decision.md
SERVER_SYNTAX=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260518_052734_aiw_gkd4e_r4c_wiring_candidate_exact_narrowing/070_server_syntax.txt
HELPER_SYNTAX=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260518_052734_aiw_gkd4e_r4c_wiring_candidate_exact_narrowing/071_helper_syntax.txt
TARGET_STATUS=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260518_052734_aiw_gkd4e_r4c_wiring_candidate_exact_narrowing/080_target_status.txt
SECRET_SCAN=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260518_052734_aiw_gkd4e_r4c_wiring_candidate_exact_narrowing/090_secret_scan.txt
SUMMARY=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260518_052734_aiw_gkd4e_r4c_wiring_candidate_exact_narrowing/010_AIW_GKD4E_R4C_SUMMARY.md

## Counts

PASS_COUNT=17
WARN_COUNT=0
FAIL_COUNT=0
HIGH_SIGNAL_COUNT=321
CLUSTER_COUNT=62
TOP_BUCKET_START=3000
TOP_BUCKET_END=3039
TOP_BUCKET_SCORE=79
TOP_BUCKET_COUNT=21
R5_DECISION_STATUS=STOP_R5_NO_SINGLE_SAFE_POINT_YET
SERVER_SYNTAX_STATUS=0
HELPER_SYNTAX_STATUS=0
TARGET_STATUS_COUNT=2
SECRET_MATCH_COUNT=0

## Final

FINAL_STATUS=PASS_GKD4E_R4C_WIRING_CANDIDATE_EXACT_NARROWING_CREATED
DB_WRITE=NO
API_POST=NO
CODE_PATCH=NO
GIT_PUSH=NO
REPORT=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260518_052734_aiw_gkd4e_r4c_wiring_candidate_exact_narrowing/000_AIW_GKD4E_R4C_WIRING_CANDIDATE_EXACT_NARROWING_REPORT.md
SUMMARY=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260518_052734_aiw_gkd4e_r4c_wiring_candidate_exact_narrowing/010_AIW_GKD4E_R4C_SUMMARY.md
