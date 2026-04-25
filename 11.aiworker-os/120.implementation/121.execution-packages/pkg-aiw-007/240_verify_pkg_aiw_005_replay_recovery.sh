#!/data/data/com.termux/files/usr/bin/bash
set -eu

PKG_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
# shellcheck disable=SC1091
. "$PKG_DIR/050_verify_lib.sh"

init_verify "PKG-AIW-005 REPLAY RECOVERY VERIFY"
require_persona_database_url

check_table "aiworker" "request_lineage_registry"
check_table "aiworker" "replay_decision_log"
check_table "aiworker" "recovery_incident"
check_table "aiworker" "recovery_execution_log"
check_table "aiworker" "acceptance_test_case"
check_table "aiworker" "acceptance_test_execution"

check_function "aiworker" "fn_decide_replay_request"
check_function "aiworker" "fn_redeliver_result_for_request_hash"
check_function "aiworker" "fn_open_recovery_incident"
check_function "aiworker" "fn_log_recovery_execution"

check_query_min "acceptance test case count" "select count(*) from aiworker.acceptance_test_case" 10

summary_exit
