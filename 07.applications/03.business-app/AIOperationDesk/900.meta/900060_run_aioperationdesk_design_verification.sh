#!/data/data/com.termux/files/usr/bin/sh
set -eu

APP_ROOT="$HOME/01.civilization-system/07.applications/03.business-app/AIOperationDesk"
STAMP="$(date +%Y%m%d_%H%M%S)"
OUT_DIR="$APP_ROOT/900.meta/900070.design_verification_$STAMP"
REPORT="$OUT_DIR/000_REPORT.md"
RESULT_FILE="$OUT_DIR/000_RESULT.txt"
CHECKLIST="$OUT_DIR/000_CHECKLIST.txt"

mkdir -p "$OUT_DIR"

PASS_COUNT=0
FAIL_COUNT=0

check_file() {
  FILE="$1"
  if [ -f "$FILE" ]; then
    printf 'OK\t%s\n' "$FILE" >> "$CHECKLIST"
    PASS_COUNT=$((PASS_COUNT + 1))
  else
    printf 'NG\t%s\n' "$FILE" >> "$CHECKLIST"
    FAIL_COUNT=$((FAIL_COUNT + 1))
  fi
}

: > "$CHECKLIST"

check_file "$APP_ROOT/000_INDEX.md"
check_file "$APP_ROOT/001_OVERVIEW.md"
check_file "$APP_ROOT/00_AIOPERATIONDESK_INTEGRATED_CANONICAL.md"
check_file "$APP_ROOT/00_AIOPERATIONDESK_INTEGRATED_CANONICAL_REFRESHED.md"

for DIR in \
  010.constitution \
  020.architecture \
  030.model \
  040.api \
  050.flow \
  060.integration \
  070.operations \
  080.policy \
  100.security \
  110.infrastructure \
  120.implementation \
  900.meta
do
  check_file "$APP_ROOT/$DIR/000_INDEX.md"
  check_file "$APP_ROOT/$DIR/001_OVERVIEW.md"
done

check_file "$APP_ROOT/030.model/030010_AIOPERATIONDESK_EXACT_DOMAIN_MODEL.md"
check_file "$APP_ROOT/030.model/030020_AIOPERATIONDESK_VIEW_FAMILY_REQUIREMENT_EXACT.md"
check_file "$APP_ROOT/040.api/040010_AIOPERATIONDESK_API_REQUEST_RESPONSE_EXACT.md"
check_file "$APP_ROOT/040.api/040020_AIOPERATIONDESK_API_DB_MAPPING_EXACT.md"
check_file "$APP_ROOT/040.api/040030_AIOPERATIONDESK_LINE_NOTIFICATION_BRIDGE_CONTRACT_EXACT.md"
check_file "$APP_ROOT/050.flow/050020_AIOPERATIONDESK_ERP_RESIDENT_SURFACE_EXACT_STATEFLOW.md"
check_file "$APP_ROOT/050.flow/050030_AIOPERATIONDESK_BUILDER_RESIDENT_SURFACE_EXACT_STATEFLOW.md"
check_file "$APP_ROOT/050.flow/050060_AIOPERATIONDESK_MAIN_CONSOLE_SCREEN_MODULE_EXACT.md"
check_file "$APP_ROOT/050.flow/050070_AIOPERATIONDESK_MAIN_CONSOLE_EXACT_STATEFLOW.md"
check_file "$APP_ROOT/060.integration/060020_AIOPERATIONDESK_SUPPORTED_APP_REGISTRY_SEED_AND_ONBOARDING_EXACT.md"
check_file "$APP_ROOT/060.integration/060030_AIOPERATIONDESK_SUPPORTED_APP_REGISTRY_SEED_ROWS_EXACT.sql"
check_file "$APP_ROOT/060.integration/060040_AIOPERATIONDESK_OPERATION_GUIDE_SEED_DICTIONARY_EXACT.md"
check_file "$APP_ROOT/060.integration/060050_AIOPERATIONDESK_COMMON_ERROR_DICTIONARY_SEED_EXACT.md"
check_file "$APP_ROOT/070.operations/070020_AIOPERATIONDESK_REVIEW_APPROVAL_DECISION_RULES_EXACT.md"
check_file "$APP_ROOT/070.operations/070030_AIOPERATIONDESK_NOTIFICATION_AND_BATCH_SUMMARY_PAYLOAD_EXACT.md"
check_file "$APP_ROOT/070.operations/070040_AIOPERATIONDESK_REVIEW_REASON_AND_APPROVAL_REASON_DICTIONARY_EXACT.md"
check_file "$APP_ROOT/070.operations/070050_AIOPERATIONDESK_QUEUE_BUCKET_AND_SLA_EXACT.md"
check_file "$APP_ROOT/080.policy/080020_AIOPERATIONDESK_MULTILINGUAL_AND_FALLBACK_POLICY_EXACT.md"
check_file "$APP_ROOT/080.policy/080030_AIOPERATIONDESK_REVIEW_APPROVAL_RISK_UI_WORDING_DICTIONARY_EXACT.md"
check_file "$APP_ROOT/100.security/100010_AIOPERATIONDESK_ACCESS_BOUNDARY_AND_OUTPUT_POLICY_EXACT.md"
check_file "$APP_ROOT/110.infrastructure/110020_AIOPERATIONDESK_DDL_EXACT.sql"
check_file "$APP_ROOT/120.implementation/120040_AIOPERATIONDESK_VERIFICATION_CHECKLIST_AND_RUNNER_NOTE.md"
check_file "$APP_ROOT/120.implementation/120050_AIOPERATIONDESK_IMPLEMENTATION_READY_FREEZE_SUMMARY.md"

if [ "$FAIL_COUNT" -eq 0 ]; then
  FINAL_RESULT="PASS"
else
  FINAL_RESULT="FAIL"
fi

cat > "$REPORT" <<REPORT_EOF
# ============================================================
# AI OPERATION DESK DESIGN VERIFICATION REPORT
# ============================================================

status: generated
app: AIOperationDesk
owner: Boss
prepared_by: Zero
generated_at: $STAMP

summary:
- pass_count: $PASS_COUNT
- fail_count: $FAIL_COUNT

result:
- $FINAL_RESULT

notes:
- This runner checks document presence only.
- It does not validate semantic correctness or SQL execution.
REPORT_EOF

cat > "$RESULT_FILE" <<RESULT_EOF
PASS_COUNT=$PASS_COUNT
FAIL_COUNT=$FAIL_COUNT
RESULT=$FINAL_RESULT
REPORT=$REPORT
CHECKLIST=$CHECKLIST
RESULT_FILE=$RESULT_FILE
RESULT_EOF

printf '%s\n' '============================================================'
printf '%s\n' 'AIOPERATIONDESK DESIGN VERIFICATION DONE'
printf '%s\n' "REPORT=$REPORT"
printf '%s\n' "CHECKLIST=$CHECKLIST"
printf '%s\n' "RESULT_FILE=$RESULT_FILE"
printf '%s\n' '============================================================'
sed -n '1,120p' "$REPORT"
printf '%s\n' '------------------------------------------------------------'
sed -n '1,120p' "$RESULT_FILE"
