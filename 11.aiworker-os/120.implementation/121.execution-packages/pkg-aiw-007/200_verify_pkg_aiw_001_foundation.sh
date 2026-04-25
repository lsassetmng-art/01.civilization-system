#!/data/data/com.termux/files/usr/bin/bash
set -eu

PKG_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
# shellcheck disable=SC1091
. "$PKG_DIR/050_verify_lib.sh"

init_verify "PKG-AIW-001 FOUNDATION VERIFY"
require_persona_database_url

check_table "aiworker" "code_family"
check_table "aiworker" "code_value"
check_table "aiworker" "worker_master"
check_table "aiworker" "official_intake_request"
check_table "aiworker" "event_outbox"

check_index "ux_worker_master_worker_code"
check_index "ux_worker_assignment_state_current"
check_index "ux_worker_availability_state_current"

check_query_min "code_family count" "select count(*) from aiworker.code_family" 5

summary_exit
