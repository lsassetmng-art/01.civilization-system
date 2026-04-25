#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

DASH_REFRESH="$ROOT/132.operations/132180_staticart_refresh_dashboard.sh"
MASTER="$ROOT/132.operations/132100_staticart_standalone_master_launcher.sh"
START_HERE="$ROOT/132.operations/132140_staticart_start_here.sh"
REVIEW="$ROOT/132.operations/132160_staticart_review_portal.sh"
CLOSEOUT="$ROOT/132.operations/132170_staticart_closeout_portal.sh"

PORTAL="$ROOT/000001_STATIC_ART_OS_PORTAL.md"
DASHBOARD="$ROOT/000002_STATIC_ART_OS_STATUS_DASHBOARD.md"
CHECKLIST="$ROOT/131.implementation-roadmap/131330_STATIC_ART_OS_IMPLEMENTATION_READY_FINAL_CHECKLIST.md"
MEMO="$ROOT/131.implementation-roadmap/131360_STATIC_ART_OS_STANDALONE_IMPLEMENTATION_READY_COMPLETION_MEMO_TEMPLATE.md"
FREEZE_NOTE="$ROOT/920.meta/047.standalone_freeze/000003_STATIC_ART_OS_STANDALONE_FREEZE_NOTE.md"
SESSION_SUMMARY="$ROOT/920.meta/055.healthcheck_pack/000001_STATIC_ART_OS_FINAL_SESSION_SUMMARY.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART HEALTHCHECK
============================================================

Usage:
  bash 132.operations/132190_staticart_healthcheck.sh help
  bash 132.operations/132190_staticart_healthcheck.sh quick
  bash 132.operations/132190_staticart_healthcheck.sh refresh
  bash 132.operations/132190_staticart_healthcheck.sh paths

Modes:
  help    : show help
  quick   : run read-only presence and env checks
  refresh : refresh dashboard, then run quick checks
  paths    : print key file and launcher paths
TEXT
}

check_file() {
  local file="$1"
  if [ -f "$file" ]; then
    printf 'OK  %s\n' "$file"
  else
    printf 'NG  %s\n' "$file"
    return 1
  fi
}

run_quick() {
  printf '\n============================================================\n'
  printf 'STATICART HEALTHCHECK QUICK\n'
  printf '============================================================\n'

  if [ -n "${PERSONA_DATABASE_URL:-}" ]; then
    printf 'OK  PERSONA_DATABASE_URL is set\n'
  else
    printf 'NG  PERSONA_DATABASE_URL is not set\n'
  fi

  rc=0
  check_file "$DASH_REFRESH" || rc=1
  check_file "$MASTER" || rc=1
  check_file "$START_HERE" || rc=1
  check_file "$REVIEW" || rc=1
  check_file "$CLOSEOUT" || rc=1
  check_file "$PORTAL" || rc=1
  check_file "$DASHBOARD" || rc=1
  check_file "$CHECKLIST" || rc=1
  check_file "$MEMO" || rc=1
  check_file "$FREEZE_NOTE" || rc=1
  check_file "$SESSION_SUMMARY" || rc=1

  if [ "$rc" -ne 0 ]; then
    exit 1
  fi
}

run_refresh() {
  if [ -f "$DASH_REFRESH" ]; then
    bash "$DASH_REFRESH"
  fi
  run_quick
}

show_paths() {
  cat <<TEXT
$DASH_REFRESH
$MASTER
$START_HERE
$REVIEW
$CLOSEOUT
$PORTAL
$DASHBOARD
$CHECKLIST
$MEMO
$FREEZE_NOTE
$SESSION_SUMMARY
TEXT
}

case "$MODE" in
  help|--help|-h)
    show_help
    ;;
  quick)
    run_quick
    ;;
  refresh)
    run_refresh
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
