#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROADBASE="$HOME/01.civilization-system/10.staticart-os/131.implementation-roadmap"

printf '\n============================================================\n'
printf 'STATICART STANDALONE SUMMARY SMOKE CHECK\n'
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

check_pattern "$ROADBASE/131320_STATIC_ART_OS_STANDALONE_FINAL_ROADMAP.md" "Phase 1" "standalone final roadmap has Phase 1"
check_pattern "$ROADBASE/131320_STATIC_ART_OS_STANDALONE_FINAL_ROADMAP.md" "Phase 7" "standalone final roadmap has Phase 7"
check_pattern "$ROADBASE/131310_STATIC_ART_OS_PHASE8_DEFERRED_EXTERNAL_INTEGRATION_NOTE.md" "deferred" "external integration is deferred"
check_pattern "$ROADBASE/131330_STATIC_ART_OS_IMPLEMENTATION_READY_FINAL_CHECKLIST.md" "implementation_ready_judgement" "final checklist has implementation judgement"
check_pattern "$ROADBASE/131340_STATIC_ART_OS_STANDALONE_MASTER_OPERATION_MANUAL.md" "PERSONA_DATABASE_URL" "master operation manual fixes PERSONA_DATABASE_URL"
