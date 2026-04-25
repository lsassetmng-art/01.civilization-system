#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="$HOME/01.civilization-system/10.staticart-os"

printf '\n============================================================\n'
printf 'STATICART STANDALONE PHASE RUNNER PRESENCE CHECK\n'
printf '============================================================\n'

check_file() {
  local file="$1"
  if [ -f "$file" ]; then
    echo "OK  $file"
  else
    echo "NG  $file"
  fi
}

check_file "$BASE/121.db-implementation-prep/verification/990_staticart_phase1_full_verify.sh"
check_file "$BASE/122.api-implementation-prep/phase2-checks/990_staticart_phase2_full_check.sh"
check_file "$BASE/122.api-implementation-prep/phase3-checks/990_staticart_phase3_full_check.sh"
check_file "$BASE/122.api-implementation-prep/phase4-5-checks/990_staticart_phase4_5_full_check.sh"
check_file "$BASE/124.test-implementation-prep/phase6-7-checks/990_staticart_phase6_7_full_check.sh"
