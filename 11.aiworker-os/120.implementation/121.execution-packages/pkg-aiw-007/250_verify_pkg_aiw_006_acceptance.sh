#!/data/data/com.termux/files/usr/bin/bash
set -eu

PKG_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
# shellcheck disable=SC1091
. "$PKG_DIR/050_verify_lib.sh"

init_verify "PKG-AIW-006 ACCEPTANCE VERIFY"
require_persona_database_url

check_table "aiworker" "acceptance_execution_batch"
check_table "aiworker" "acceptance_verification_item"
check_table "aiworker" "acceptance_verification_result"
check_table "aiworker" "acceptance_verification_runbook_log"

check_function "aiworker" "fn_open_acceptance_execution_batch"
check_function "aiworker" "fn_record_acceptance_verification_result"
check_function "aiworker" "fn_record_acceptance_case_execution_and_verify"
check_function "aiworker" "fn_finalize_acceptance_execution_batch"

check_query_min "acceptance verification item count" "select count(*) from aiworker.acceptance_verification_item" 10

summary_exit
