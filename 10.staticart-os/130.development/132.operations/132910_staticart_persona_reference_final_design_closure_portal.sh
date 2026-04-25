#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

DECL_MD="$ROOT/131.implementation-roadmap/131475_STATIC_ART_OS_PERSONA_REFERENCE_FINAL_DESIGN_CLOSURE_MASTER_DECLARATION.md"
MATRIX_MD="$ROOT/131.implementation-roadmap/131476_STATIC_ART_OS_PERSONA_REFERENCE_FINAL_CANONICAL_CLOSURE_MATRIX.md"
ENTRY_MD="$ROOT/131.implementation-roadmap/131477_STATIC_ART_OS_PERSONA_REFERENCE_FINAL_ACTUALIZATION_ENTRYPOINT_ROADMAP.md"
RULE_MD="$ROOT/131.implementation-roadmap/131478_STATIC_ART_OS_PERSONA_REFERENCE_STOP_DESIGN_START_ACTUALIZATION_RULE.md"
CERT_MD="$ROOT/920.meta/119.persona_reference_final_design_closure_pack/000001_STATIC_ART_OS_PERSONA_REFERENCE_FINAL_COMPLETION_CERTIFICATE.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA REFERENCE FINAL DESIGN CLOSURE PORTAL
============================================================

Usage:
  bash 132.operations/132910_staticart_persona_reference_final_design_closure_portal.sh help
  bash 132.operations/132910_staticart_persona_reference_final_design_closure_portal.sh list
  bash 132.operations/132910_staticart_persona_reference_final_design_closure_portal.sh short
  bash 132.operations/132910_staticart_persona_reference_final_design_closure_portal.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$DECL_MD
$MATRIX_MD
$ENTRY_MD
$RULE_MD
$CERT_MD
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'FINAL DESIGN CLOSURE MASTER DECLARATION\n'
  printf '============================================================\n'
  sed -n '1,220p' "$DECL_MD"

  printf '\n============================================================\n'
  printf 'FINAL CANONICAL CLOSURE MATRIX\n'
  printf '============================================================\n'
  sed -n '1,240p' "$MATRIX_MD"

  printf '\n============================================================\n'
  printf 'FINAL ACTUALIZATION ENTRYPOINT ROADMAP\n'
  printf '============================================================\n'
  sed -n '1,220p' "$ENTRY_MD"

  printf '\n============================================================\n'
  printf 'STOP DESIGN / START ACTUALIZATION RULE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$RULE_MD"

  printf '\n============================================================\n'
  printf 'FINAL COMPLETION CERTIFICATE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$CERT_MD"
}

show_paths() {
  show_list
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
  paths)
    show_paths
    ;;
  *)
    echo "ERROR: unknown mode -> $MODE"
    show_help
    exit 1
    ;;
esac
