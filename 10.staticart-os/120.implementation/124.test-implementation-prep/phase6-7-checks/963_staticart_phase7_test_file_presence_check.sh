#!/data/data/com.termux/files/usr/bin/bash
set -eu

TESTSRC="$HOME/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests"

printf '\n============================================================\n'
printf 'STATICART PHASE7 TEST FILE PRESENCE CHECK\n'
printf '============================================================\n'

check_file() {
  local file="$1"
  if [ -f "$file" ]; then
    echo "OK  $file"
  else
    echo "NG  $file"
  fi
}

check_file "$TESTSRC/api/lifecycle-and-review.test.ts"
check_file "$TESTSRC/api/entitlement-and-library.test.ts"
check_file "$TESTSRC/policy/policy-and-projection.test.ts"
check_file "$TESTSRC/audit/permission-and-audit.test.ts"
check_file "$TESTSRC/config/test-env.ts"
check_file "$TESTSRC/runners/900_staticart_test_execution_order.md"
check_file "$TESTSRC/runners/910_staticart_test_env_check.sh"
