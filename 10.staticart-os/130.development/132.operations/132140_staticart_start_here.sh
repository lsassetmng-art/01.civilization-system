#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"
MASTER="$ROOT/132.operations/132100_staticart_standalone_master_launcher.sh"
PHASE1="$ROOT/121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh"
MEMO="$ROOT/131.implementation-roadmap/131360_STATIC_ART_OS_STANDALONE_IMPLEMENTATION_READY_COMPLETION_MEMO_TEMPLATE.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART START HERE
============================================================

Usage:
  bash 132.operations/132140_staticart_start_here.sh help
  bash 132.operations/132140_staticart_start_here.sh env
  bash 132.operations/132140_staticart_start_here.sh next
  bash 132.operations/132140_staticart_start_here.sh commands

Modes:
  help      : show this help
  env       : confirm PERSONA_DATABASE_URL and key files
  next      : print the recommended next actions
  commands  : print the main command sequence
TEXT
}

run_env() {
  printf '\n============================================================\n'
  printf 'STATICART START-HERE ENV CHECK\n'
  printf '============================================================\n'

  if [ -z "${PERSONA_DATABASE_URL:-}" ]; then
    echo "ERROR: PERSONA_DATABASE_URL is not set"
    exit 1
  fi

  echo "OK: PERSONA_DATABASE_URL is set"

  for f in "$MASTER" "$PHASE1" "$MEMO"; do
    if [ -f "$f" ]; then
      echo "OK: $f"
    else
      echo "ERROR: missing file -> $f"
      exit 1
    fi
  done
}

show_next() {
  cat <<TEXT
============================================================
STATICART NEXT ACTIONS
============================================================

1. Read:
   $ROOT/000_STATIC_ART_OS_INDEX.md
   $ROOT/000_STATIC_ART_OS_OVERVIEW.md
   $ROOT/000_STATIC_ART_OS_ROADMAP.md

2. Check launchers:
   bash "$MASTER" help
   bash "$PHASE1" help

3. Run DB workflow:
   bash "$PHASE1" precheck
   bash "$PHASE1" apply
   bash "$PHASE1" verify

4. Run later phase checks:
   bash "$MASTER" phase2-check
   bash "$MASTER" phase3-check
   bash "$MASTER" phase4-5-check
   bash "$MASTER" phase6-7-check

5. Final:
   bash "$MASTER" final-check
TEXT
}

show_commands() {
  cat <<TEXT
bash "$ROOT/132.operations/132100_staticart_standalone_master_launcher.sh" help
bash "$ROOT/121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh" help
bash "$ROOT/121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh" precheck
bash "$ROOT/121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh" apply
bash "$ROOT/121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh" verify
bash "$ROOT/132.operations/132100_staticart_standalone_master_launcher.sh" phase2-check
bash "$ROOT/132.operations/132100_staticart_standalone_master_launcher.sh" phase3-check
bash "$ROOT/132.operations/132100_staticart_standalone_master_launcher.sh" phase4-5-check
bash "$ROOT/132.operations/132100_staticart_standalone_master_launcher.sh" phase6-7-check
bash "$ROOT/132.operations/132100_staticart_standalone_master_launcher.sh" final-check
TEXT
}

case "$MODE" in
  help|--help|-h)
    show_help
    ;;
  env)
    run_env
    ;;
  next)
    show_next
    ;;
  commands)
    show_commands
    ;;
  *)
    echo "ERROR: unknown mode -> $MODE"
    show_help
    exit 1
    ;;
esac
