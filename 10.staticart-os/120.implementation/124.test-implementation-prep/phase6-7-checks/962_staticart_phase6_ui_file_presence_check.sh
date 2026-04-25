#!/data/data/com.termux/files/usr/bin/bash
set -eu

UIBASE="$HOME/01.civilization-system/10.staticart-os/123.ui-implementation-prep/source-skeleton/staticart-ui"

printf '\n============================================================\n'
printf 'STATICART PHASE6 UI FILE PRESENCE CHECK\n'
printf '============================================================\n'

check_file() {
  local file="$1"
  if [ -f "$file" ]; then
    echo "OK  $file"
  else
    echo "NG  $file"
  fi
}

check_file "$UIBASE/screens/admin/ReviewQueueScreen.tsx"
check_file "$UIBASE/screens/admin/ReviewDetailScreen.tsx"
check_file "$UIBASE/screens/admin/AuditDetailScreen.tsx"
check_file "$UIBASE/components/admin/ReviewDecisionPanel.tsx"
check_file "$UIBASE/components/common/ScreenShell.tsx"
check_file "$UIBASE/components/common/StatePanel.tsx"
