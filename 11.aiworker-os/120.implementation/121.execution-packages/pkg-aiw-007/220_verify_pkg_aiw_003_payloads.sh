#!/data/data/com.termux/files/usr/bin/bash
set -eu

PKG_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
# shellcheck disable=SC1091
. "$PKG_DIR/050_verify_lib.sh"

init_verify "PKG-AIW-003 PAYLOAD VERIFY"
require_persona_database_url

check_table "aiworker" "payload_schema_catalog"
check_table "aiworker" "payload_document"
check_table "aiworker" "payload_validation_log"

check_function "aiworker" "fn_validate_payload_by_schema_name"
check_function "aiworker" "fn_store_payload_document"
check_function "aiworker" "fn_default_summary_code_from_result_code"
check_function "aiworker" "fn_default_summary_band_from_result_code"

check_query_min "payload schema catalog count" "select count(*) from aiworker.payload_schema_catalog" 6

summary_exit
