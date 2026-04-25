#!/data/data/com.termux/files/usr/bin/bash
set -eu

PKG_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
# shellcheck disable=SC1091
. "$PKG_DIR/050_verify_lib.sh"

init_verify "PKG-AIW-002 FUNCTIONS VERIFY"
require_persona_database_url

check_table "aiworker" "state_transition_rule"
check_table "aiworker" "result_correlation"

check_function "aiworker" "fn_apply_worker_assignment_state"
check_function "aiworker" "fn_apply_worker_availability_state"
check_function "aiworker" "fn_apply_worker_repair_transition"
check_function "aiworker" "fn_apply_worker_rebuild_transition"
check_function "aiworker" "fn_apply_worker_growth_event"
check_function "aiworker" "fn_apply_worker_privileged_context_change"
check_function "aiworker" "fn_apply_worker_tendency_update"
check_function "aiworker" "fn_record_business_result_correlation"

check_query_min "state_transition_rule count" "select count(*) from aiworker.state_transition_rule" 10

summary_exit
