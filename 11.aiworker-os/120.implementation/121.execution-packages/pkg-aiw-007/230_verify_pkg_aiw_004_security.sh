#!/data/data/com.termux/files/usr/bin/bash
set -eu

PKG_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
# shellcheck disable=SC1091
. "$PKG_DIR/050_verify_lib.sh"

init_verify "PKG-AIW-004 SECURITY VERIFY"
require_persona_database_url

check_role "role_aiw_official_intake_writer"
check_role "role_aiw_controlled_function_executor"
check_role "role_aiw_audit_reader"
check_role "role_aiw_operations_reviewer"
check_role "role_aiw_event_delivery"
check_role "role_aiw_restricted_reviewer"
check_role "role_aiw_privileged_reviewer"
check_role "role_aiw_no_rawtable_aiworker"

check_policy "aiworker" "official_intake_request" "pol_aiw_official_intake_writer_insert_self"
check_policy "aiworker" "event_outbox" "pol_aiw_event_delivery_select_undelivered"
check_policy "aiworker" "worker_privileged_profile" "pol_aiw_privileged_profile_privileged_reviewer"
check_policy "aiworker" "worker_restricted_handling_policy" "pol_aiw_restricted_policy_restricted_reviewer"

check_query_equals \
  "role_aiw_no_rawtable_aiworker worker_master select" \
  "select case when has_table_privilege('role_aiw_no_rawtable_aiworker','aiworker.worker_master','select') then 'YES' else 'NO' end" \
  "NO"

summary_exit
