#!/data/data/com.termux/files/usr/bin/bash
set -eu

UIBASE="$HOME/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui"
TESTSRC="$HOME/01.civilization-system/10.staticart-os/124.test-implementation-prep/source-skeleton/staticart-tests"

printf '\n============================================================\n'
printf 'STATICART PHASE6_7 BINDING SMOKE CHECK\n'
printf '============================================================\n'

check_pattern() {
  local file="$1"
  local pattern="$2"
  local label="$3"

  if grep -q "$pattern" "$file"; then
    echo "OK  $label"
  else
    echo "NG  $label"
  fi
}

check_pattern "$UIBASE/screens/admin/ReviewQueueScreen.tsx" "ReviewQueueScreen" "ReviewQueueScreen exists"
check_pattern "$UIBASE/screens/admin/ReviewDetailScreen.tsx" "ReviewDetailScreen" "ReviewDetailScreen exists"
check_pattern "$UIBASE/screens/admin/AuditDetailScreen.tsx" "AuditDetailScreen" "AuditDetailScreen exists"
check_pattern "$UIBASE/components/admin/ReviewDecisionPanel.tsx" "ReviewDecisionPanel" "ReviewDecisionPanel exists"

check_pattern "$TESTSRC/api/lifecycle-and-review.test.ts" "AC-LC-001" "lifecycle acceptance case present"
check_pattern "$TESTSRC/api/entitlement-and-library.test.ts" "AC-EN-001" "entitlement acceptance case present"
check_pattern "$TESTSRC/policy/policy-and-projection.test.ts" "AC-PL-001" "policy acceptance case present"
check_pattern "$TESTSRC/audit/permission-and-audit.test.ts" "AC-AU-001" "audit acceptance case present"
