#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="$HOME/01.civilization-system/10.staticart-os"

printf '\n============================================================\n'
printf 'STATICART STANDALONE FINAL FILE PRESENCE CHECK\n'
printf '============================================================\n'

check_file() {
  local file="$1"
  if [ -f "$file" ]; then
    echo "OK  $file"
  else
    echo "NG  $file"
  fi
}

check_file "$BASE/121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh"
check_file "$BASE/122.api-implementation-prep/122170_STATIC_ART_OS_PHASE2_BINDING_TASK_LEDGER.md"
check_file "$BASE/122.api-implementation-prep/122270_STATIC_ART_OS_PHASE3_GOVERNANCE_AND_PUBLISH_TASK_LEDGER.md"
check_file "$BASE/131.implementation-roadmap/131250_STATIC_ART_OS_PHASE4_5_MASTER_LEDGER.md"
check_file "$BASE/131.implementation-roadmap/131290_STATIC_ART_OS_PHASE6_ADMIN_GOVERNANCE_UI_TASK_LEDGER.md"
check_file "$BASE/131.implementation-roadmap/131300_STATIC_ART_OS_PHASE7_ACCEPTANCE_REGRESSION_TASK_LEDGER.md"
check_file "$BASE/131.implementation-roadmap/131330_STATIC_ART_OS_IMPLEMENTATION_READY_FINAL_CHECKLIST.md"
check_file "$BASE/131.implementation-roadmap/131360_STATIC_ART_OS_STANDALONE_IMPLEMENTATION_READY_COMPLETION_MEMO_TEMPLATE.md"
