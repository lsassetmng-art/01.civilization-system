#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

START_HERE="$ROOT/132.operations/132140_staticart_start_here.sh"
HEALTH="$ROOT/132.operations/132190_staticart_healthcheck.sh"
REVIEW="$ROOT/132.operations/132160_staticart_review_portal.sh"
SIGNOFF="$ROOT/132.operations/132210_staticart_signoff_portal.sh"
MASTER="$ROOT/132.operations/132100_staticart_standalone_master_launcher.sh"

GATE_MD="$ROOT/132.operations/132220_STATIC_ART_OS_PRE_IMPLEMENTATION_GATE_MATRIX.md"
APPROVAL_MD="$ROOT/132.operations/132230_STATIC_ART_OS_APPROVAL_SEQUENCE.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PRE IMPLEMENTATION GATE
============================================================

Usage:
  bash 132.operations/132240_staticart_pre_implementation_gate.sh help
  bash 132.operations/132240_staticart_pre_implementation_gate.sh quick
  bash 132.operations/132240_staticart_pre_implementation_gate.sh docs
  bash 132.operations/132240_staticart_pre_implementation_gate.sh paths

Modes:
  help   : show help
  quick  : run read-only gate checks
  docs   : show gate/approval document heads
  paths  : print main paths
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
  printf 'STATICART PRE IMPLEMENTATION GATE QUICK\n'
  printf '============================================================\n'

  rc=0

  check_file "$START_HERE" || rc=1
  check_file "$HEALTH" || rc=1
  check_file "$REVIEW" || rc=1
  check_file "$SIGNOFF" || rc=1
  check_file "$MASTER" || rc=1
  check_file "$GATE_MD" || rc=1
  check_file "$APPROVAL_MD" || rc=1

  bash "$START_HERE" env || rc=1
  bash "$HEALTH" quick || rc=1

  if [ "$rc" -ne 0 ]; then
    exit 1
  fi
}

show_docs() {
  printf '\n============================================================\n'
  printf 'GATE MATRIX\n'
  printf '============================================================\n'
  sed -n '1,140p' "$GATE_MD"

  printf '\n============================================================\n'
  printf 'APPROVAL SEQUENCE\n'
  printf '============================================================\n'
  sed -n '1,160p' "$APPROVAL_MD"
}

show_paths() {
  printf '%s\n' "$START_HERE"
  printf '%s\n' "$HEALTH"
  printf '%s\n' "$REVIEW"
  printf '%s\n' "$SIGNOFF"
  printf '%s\n' "$MASTER"
  printf '%s\n' "$GATE_MD"
  printf '%s\n' "$APPROVAL_MD"
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
