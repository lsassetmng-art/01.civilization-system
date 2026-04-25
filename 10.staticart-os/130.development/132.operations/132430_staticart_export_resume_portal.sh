#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

MANIFEST="$ROOT/920.meta/075.export_and_resume_pack/000001_STATIC_ART_OS_EXPORT_MANIFEST.txt"
KEYPATHS="$ROOT/920.meta/075.export_and_resume_pack/000002_STATIC_ART_OS_EXPORT_KEY_PATHS.md"
RESUME="$ROOT/920.meta/075.export_and_resume_pack/000003_STATIC_ART_OS_RESUME_NOTE.md"

SWEEP="$ROOT/132.operations/132410_staticart_master_readonly_sweep.sh"
START_HERE="$ROOT/132.operations/132140_staticart_start_here.sh"
MASTER="$ROOT/132.operations/132100_staticart_standalone_master_launcher.sh"
GATE="$ROOT/132.operations/132240_staticart_pre_implementation_gate.sh"
PERSONA_RECHECK="$ROOT/132.operations/132290_staticart_persona_final_recheck.sh"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART EXPORT / RESUME PORTAL
============================================================

Usage:
  bash 132.operations/132430_staticart_export_resume_portal.sh help
  bash 132.operations/132430_staticart_export_resume_portal.sh list
  bash 132.operations/132430_staticart_export_resume_portal.sh short
  bash 132.operations/132430_staticart_export_resume_portal.sh resume
  bash 132.operations/132430_staticart_export_resume_portal.sh manifest
TEXT
}

show_list() {
  cat <<TEXT
$MANIFEST
$KEYPATHS
$RESUME
$SWEEP
$START_HERE
$MASTER
$GATE
$PERSONA_RECHECK
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'EXPORT KEY PATHS\n'
  printf '============================================================\n'
  sed -n '1,160p' "$KEYPATHS"

  printf '\n============================================================\n'
  printf 'RESUME NOTE\n'
  printf '============================================================\n'
  sed -n '1,160p' "$RESUME"
}

run_resume() {
  bash "$SWEEP"
}

show_manifest() {
  sed -n '1,240p' "$MANIFEST"
}

case "$MODE" in
  help|--help|-h)
    show_help
    ;;
  list)
    show_list
    ;;
  short)
    show_short
    ;;
  resume)
    run_resume
    ;;
  manifest)
    show_manifest
    ;;
  *)
    echo "ERROR: unknown mode -> $MODE"
    show_help
    exit 1
    ;;
esac
