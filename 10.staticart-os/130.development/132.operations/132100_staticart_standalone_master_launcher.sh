#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="$HOME/01.civilization-system/10.staticart-os"

PHASE1="$BASE/121.db-implementation-prep/verification/990_staticart_phase1_full_verify.sh"
PHASE2="$BASE/122.api-implementation-prep/phase2-checks/990_staticart_phase2_full_check.sh"
PHASE3="$BASE/122.api-implementation-prep/phase3-checks/990_staticart_phase3_full_check.sh"
PHASE45="$BASE/122.api-implementation-prep/phase4-5-checks/990_staticart_phase4_5_full_check.sh"
PHASE67="$BASE/124.test-implementation-prep/phase6-7-checks/990_staticart_phase6_7_full_check.sh"
FINAL="$BASE/124.test-implementation-prep/final-standalone-checks/999_staticart_standalone_full_check.sh"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART STANDALONE MASTER LAUNCHER
============================================================

Usage:
  bash 132100_staticart_standalone_master_launcher.sh help
  bash 132100_staticart_standalone_master_launcher.sh phase1-verify
  bash 132100_staticart_standalone_master_launcher.sh phase2-check
  bash 132100_staticart_standalone_master_launcher.sh phase3-check
  bash 132100_staticart_standalone_master_launcher.sh phase4-5-check
  bash 132100_staticart_standalone_master_launcher.sh phase6-7-check
  bash 132100_staticart_standalone_master_launcher.sh chained-checks
  bash 132100_staticart_standalone_master_launcher.sh final-check

Environment:
  PERSONA_DATABASE_URL is required for Persona-side DB work.
TEXT
}

require_env() {
  if [ -z "${PERSONA_DATABASE_URL:-}" ]; then
    echo "ERROR: PERSONA_DATABASE_URL is not set"
    exit 1
  fi
}

require_file() {
  local file="$1"
  if [ ! -f "$file" ]; then
    echo "ERROR: missing runner -> $file"
    exit 1
  fi
}

run_one() {
  local label="$1"
  local file="$2"
  printf '\n============================================================\n'
  printf 'RUN: %s\n' "$label"
  printf '============================================================\n'
  require_file "$file"
  bash "$file"
}

case "$MODE" in
  help|--help|-h)
    show_help
    ;;

  phase1-verify)
    require_env
    run_one "PHASE1 VERIFY" "$PHASE1"
    ;;

  phase2-check)
    require_env
    run_one "PHASE2 CHECK" "$PHASE2"
    ;;

  phase3-check)
    require_env
    run_one "PHASE3 CHECK" "$PHASE3"
    ;;

  phase4-5-check)
    require_env
    run_one "PHASE4_5 CHECK" "$PHASE45"
    ;;

  phase6-7-check)
    require_env
    run_one "PHASE6_7 CHECK" "$PHASE67"
    ;;

  chained-checks)
    require_env
    run_one "PHASE1 VERIFY" "$PHASE1"
    run_one "PHASE2 CHECK" "$PHASE2"
    run_one "PHASE3 CHECK" "$PHASE3"
    run_one "PHASE4_5 CHECK" "$PHASE45"
    run_one "PHASE6_7 CHECK" "$PHASE67"
    ;;

  final-check)
    require_env
    run_one "FINAL STANDALONE CHECK" "$FINAL"
    ;;

  *)
    echo "ERROR: unknown mode -> $MODE"
    show_help
    exit 1
    ;;
esac
