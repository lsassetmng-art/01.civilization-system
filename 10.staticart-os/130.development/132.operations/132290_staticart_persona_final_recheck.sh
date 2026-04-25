#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"
META="$ROOT/920.meta/065.persona_rule_final_recheck"

REPORT="$META/000002_STATIC_ART_OS_PERSONA_RULE_FINAL_RECHECK_RESULT.md"

OVERVIEW="$ROOT/000_STATIC_ART_OS_OVERVIEW.md"
ROADMAP="$ROOT/000_STATIC_ART_OS_ROADMAP.md"
CHECKLIST="$ROOT/131.implementation-roadmap/131330_STATIC_ART_OS_IMPLEMENTATION_READY_FINAL_CHECKLIST.md"
GATE="$ROOT/132.operations/132220_STATIC_ART_OS_PRE_IMPLEMENTATION_GATE_MATRIX.md"
SIGNOFF="$ROOT/920.meta/056.signoff_pack/000001_STATIC_ART_OS_PRE_IMPLEMENTATION_SIGNOFF_MEMO_TEMPLATE.md"
DASHBOARD="$ROOT/000002_STATIC_ART_OS_STATUS_DASHBOARD.md"
FREEZE_NOTE="$ROOT/920.meta/047.standalone_freeze/000003_STATIC_ART_OS_STANDALONE_FREEZE_NOTE.md"
HANDOFF="$ROOT/132.operations/132120_STATIC_ART_OS_IMPLEMENTATION_START_HANDOFF.md"

RULE="$ROOT/080.policy/080160_STATIC_ART_OS_PERSONA_NON_DUPLICATION_AND_SNAPSHOT_CONSUMPTION_RULE.md"
AUDIT="$ROOT/080.policy/080170_STATIC_ART_OS_PERSONA_DUPLICATION_AUDIT_CHECKLIST.md"
MATRIX="$ROOT/080.policy/080180_STATIC_ART_OS_PERSONA_SNAPSHOT_REPLACEMENT_MATRIX.md"
ABOLISH="$ROOT/080.policy/080190_STATIC_ART_OS_PERSONA_DIRECT_MUTATION_ABOLISH_LIST.md"
INSERTION="$ROOT/080.policy/080200_STATIC_ART_OS_PERSONA_REFERENCE_LAYER_EXACT_INSERTION_POINTS.md"
DB_ADD="$ROOT/121.db-implementation-prep/121260_STATIC_ART_OS_PERSONA_REFERENCE_DB_ADDENDUM.md"
API_ADD="$ROOT/122.api-implementation-prep/122360_STATIC_ART_OS_PERSONA_REFERENCE_API_ADDENDUM.md"
UI_ADD="$ROOT/123.ui-implementation-prep/123170_STATIC_ART_OS_PERSONA_REFERENCE_UI_ADDENDUM.md"
TEST_ADD="$ROOT/124.test-implementation-prep/124170_STATIC_ART_OS_PERSONA_REFERENCE_TEST_ADDENDUM.md"

HEALTH="$ROOT/132.operations/132190_staticart_healthcheck.sh"
GATE_SH="$ROOT/132.operations/132240_staticart_pre_implementation_gate.sh"
PERSONA_RULE_REVIEW="$ROOT/132.operations/132250_staticart_persona_rule_review.sh"
PERSONA_ADDENDUM_REVIEW="$ROOT/132.operations/132260_staticart_persona_reference_addendum_review.sh"
PERSONA_IMPACT_REVIEW="$ROOT/132.operations/132270_staticart_persona_reference_impact_review.sh"
PERSONA_WORDING_REVIEW="$ROOT/132.operations/132280_staticart_persona_reference_wording_review.sh"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA FINAL RECHECK
============================================================

Usage:
  bash 132.operations/132290_staticart_persona_final_recheck.sh help
  bash 132.operations/132290_staticart_persona_final_recheck.sh quick
  bash 132.operations/132290_staticart_persona_final_recheck.sh docs
  bash 132.operations/132290_staticart_persona_final_recheck.sh paths

Modes:
  help   : show help
  quick  : run read-only persona final recheck and write result report
  docs   : show recheck scope head
  paths  : print key paths
TEXT
}

file_status() {
  local file="$1"
  if [ -f "$file" ]; then
    printf 'OK'
  else
    printf 'NG'
  fi
}

marker_count() {
  local file="$1"
  local marker="$2"
  if [ -f "$file" ]; then
    grep -Fc "$marker" "$file" || true
  else
    printf '0'
  fi
}

show_docs() {
  local scope="$ROOT/132.operations/132285_STATIC_ART_OS_PERSONA_RULE_FINAL_RECHECK_SCOPE.md"
  if [ -f "$scope" ]; then
    sed -n '1,220p' "$scope"
  else
    echo "NG: missing scope file -> $scope"
    exit 1
  fi
}

show_paths() {
  printf '%s\n' "$RULE"
  printf '%s\n' "$AUDIT"
  printf '%s\n' "$MATRIX"
  printf '%s\n' "$ABOLISH"
  printf '%s\n' "$INSERTION"
  printf '%s\n' "$DB_ADD"
  printf '%s\n' "$API_ADD"
  printf '%s\n' "$UI_ADD"
  printf '%s\n' "$TEST_ADD"
  printf '%s\n' "$OVERVIEW"
  printf '%s\n' "$ROADMAP"
  printf '%s\n' "$CHECKLIST"
  printf '%s\n' "$GATE"
  printf '%s\n' "$SIGNOFF"
  printf '%s\n' "$DASHBOARD"
  printf '%s\n' "$FREEZE_NOTE"
  printf '%s\n' "$HANDOFF"
}

run_quick() {
  mkdir -p "$META"

  RULE_STATUS="$(file_status "$RULE")"
  AUDIT_STATUS="$(file_status "$AUDIT")"
  MATRIX_STATUS="$(file_status "$MATRIX")"
  ABOLISH_STATUS="$(file_status "$ABOLISH")"
  INSERTION_STATUS="$(file_status "$INSERTION")"
  DB_ADD_STATUS="$(file_status "$DB_ADD")"
  API_ADD_STATUS="$(file_status "$API_ADD")"
  UI_ADD_STATUS="$(file_status "$UI_ADD")"
  TEST_ADD_STATUS="$(file_status "$TEST_ADD")"

  OVERVIEW_COUNT="$(marker_count "$OVERVIEW" '<!-- PERSONA_REFERENCE_RULE_START -->')"
  ROADMAP_COUNT="$(marker_count "$ROADMAP" '<!-- PERSONA_REFERENCE_SIDE_LINK_RULE_START -->')"
  CHECKLIST_COUNT="$(marker_count "$CHECKLIST" '<!-- PERSONA_REFERENCE_RULE_CHECKS_START -->')"
  GATE_COUNT="$(marker_count "$GATE" '<!-- PERSONA_REFERENCE_GATE_START -->')"
  SIGNOFF_COUNT="$(marker_count "$SIGNOFF" '<!-- PERSONA_REFERENCE_SIGNOFF_START -->')"
  DASHBOARD_COUNT="$(marker_count "$DASHBOARD" '<!-- PERSONA_REFERENCE_STATUS_START -->')"
  FREEZE_COUNT="$(marker_count "$FREEZE_NOTE" '<!-- PERSONA_REFERENCE_FREEZE_ADDENDUM_START -->')"
  HANDOFF_COUNT="$(marker_count "$HANDOFF" '<!-- PERSONA_REFERENCE_HANDOFF_ADDENDUM_START -->')"
  SIGNOFF_ADD_COUNT="$(marker_count "$SIGNOFF" '<!-- PERSONA_REFERENCE_SIGNOFF_ADDENDUM_START -->')"

  DUP_PROBLEM_COUNT=0
  for c in \
    "$OVERVIEW_COUNT" \
    "$ROADMAP_COUNT" \
    "$CHECKLIST_COUNT" \
    "$GATE_COUNT" \
    "$SIGNOFF_COUNT" \
    "$DASHBOARD_COUNT" \
    "$FREEZE_COUNT" \
    "$HANDOFF_COUNT" \
    "$SIGNOFF_ADD_COUNT"
  do
    if [ "$c" -gt 1 ]; then
      DUP_PROBLEM_COUNT=$((DUP_PROBLEM_COUNT + 1))
    fi
  done

  LAUNCHER_OK=0
  for f in \
    "$HEALTH" \
    "$GATE_SH" \
    "$PERSONA_RULE_REVIEW" \
    "$PERSONA_ADDENDUM_REVIEW" \
    "$PERSONA_IMPACT_REVIEW" \
    "$PERSONA_WORDING_REVIEW"
  do
    if [ -f "$f" ]; then
      LAUNCHER_OK=$((LAUNCHER_OK + 1))
    fi
  done

  cat > "$REPORT" <<EOF2
# ============================================================
# STATIC ART OS PERSONA RULE FINAL RECHECK RESULT
# ============================================================

status: generated
system: StaticArtOS
owner: Boss
prepared_by: Zero

## Rule anchor files

| File | Status |
|---|---|
| 080160 rule | $RULE_STATUS |
| 080170 audit | $AUDIT_STATUS |
| 080180 matrix | $MATRIX_STATUS |
| 080190 abolish | $ABOLISH_STATUS |
| 080200 insertion points | $INSERTION_STATUS |
| 121260 DB addendum | $DB_ADD_STATUS |
| 122360 API addendum | $API_ADD_STATUS |
| 123170 UI addendum | $UI_ADD_STATUS |
| 124170 test addendum | $TEST_ADD_STATUS |

## Marker counts

| Target | Marker Count |
|---|---:|
| overview persona rule | $OVERVIEW_COUNT |
| roadmap side-link rule | $ROADMAP_COUNT |
| checklist persona rule checks | $CHECKLIST_COUNT |
| gate persona readiness | $GATE_COUNT |
| signoff persona review result | $SIGNOFF_COUNT |
| dashboard persona status | $DASHBOARD_COUNT |
| freeze addendum | $FREEZE_COUNT |
| handoff addendum | $HANDOFF_COUNT |
| signoff addendum | $SIGNOFF_ADD_COUNT |

## Launcher presence

| Item | Status |
|---|---|
| health launcher | $(file_status "$HEALTH") |
| gate launcher | $(file_status "$GATE_SH") |
| persona rule review launcher | $(file_status "$PERSONA_RULE_REVIEW") |
| persona addendum review launcher | $(file_status "$PERSONA_ADDENDUM_REVIEW") |
| persona impact review launcher | $(file_status "$PERSONA_IMPACT_REVIEW") |
| persona wording review launcher | $(file_status "$PERSONA_WORDING_REVIEW") |

## Summary

| Metric | Value |
|---|---:|
| duplicate_marker_problem_count | $DUP_PROBLEM_COUNT |
| launcher_ok_count | $LAUNCHER_OK |

## Judgement

- Rule anchor files should all be OK.
- Marker counts should normally be 1.
- duplicate_marker_problem_count should be 0.
- launcher_ok_count should be 6.

final_judgement:
- persona_rule_final_recheck_complete: yes
EOF2

  printf '\n============================================================\n'
  printf 'STATICART PERSONA FINAL RECHECK DONE\n'
  printf '============================================================\n'
  printf 'REPORT: %s\n' "$REPORT"
  printf '\n[REPORT HEAD]\n'
  sed -n '1,180p' "$REPORT"
}

case "$MODE" in
  help|--help|-h)
    show_help
    ;;
  quick)
    run_quick
    ;;
  docs)
    show_docs
    ;;
  paths)
    show_paths
    ;;
  *)
    echo "ERROR: unknown mode -> $MODE"
    show_help
    exit 1
    ;;
esac
