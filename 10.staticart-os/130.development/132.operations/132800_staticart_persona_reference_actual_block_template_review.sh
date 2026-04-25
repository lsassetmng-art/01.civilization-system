#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

MASTER_MD="$ROOT/131.implementation-roadmap/131413_STATIC_ART_OS_PERSONA_REFERENCE_ACTUAL_BLOCK_MASTER_TEMPLATE.md"
A01_MD="$ROOT/131.implementation-roadmap/131414_STATIC_ART_OS_PERSONA_REFERENCE_PR_A01_BOUNDARY_SCOPE_CONFIRM_BLOCK_TEMPLATE.md"
A02_MD="$ROOT/131.implementation-roadmap/131415_STATIC_ART_OS_PERSONA_REFERENCE_PR_A02_DB_REFERENCE_LAYER_BLOCK_TEMPLATE.md"
A03_MD="$ROOT/131.implementation-roadmap/131416_STATIC_ART_OS_PERSONA_REFERENCE_PR_A03_REFLECTION_LAYER_BLOCK_TEMPLATE.md"
A04_MD="$ROOT/131.implementation-roadmap/131417_STATIC_ART_OS_PERSONA_REFERENCE_PR_A04_API_READ_SIDE_BLOCK_TEMPLATE.md"
A05_MD="$ROOT/131.implementation-roadmap/131418_STATIC_ART_OS_PERSONA_REFERENCE_PR_A05_UI_SURFACE_ENABLEMENT_BLOCK_TEMPLATE.md"
A06_MD="$ROOT/131.implementation-roadmap/131419_STATIC_ART_OS_PERSONA_REFERENCE_PR_A06_VERIFICATION_EVIDENCE_BLOCK_TEMPLATE.md"
A07_MD="$ROOT/131.implementation-roadmap/131420_STATIC_ART_OS_PERSONA_REFERENCE_PR_A07_RUNTIME_GUARD_ROLLOUT_BLOCK_TEMPLATE.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA REFERENCE ACTUAL BLOCK TEMPLATE REVIEW
============================================================

Usage:
  bash 132.operations/132800_staticart_persona_reference_actual_block_template_review.sh help
  bash 132.operations/132800_staticart_persona_reference_actual_block_template_review.sh list
  bash 132.operations/132800_staticart_persona_reference_actual_block_template_review.sh short
  bash 132.operations/132800_staticart_persona_reference_actual_block_template_review.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$MASTER_MD
$A01_MD
$A02_MD
$A03_MD
$A04_MD
$A05_MD
$A06_MD
$A07_MD
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'MASTER TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$MASTER_MD"

  printf '\n============================================================\n'
  printf 'PR-A01 TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$A01_MD"

  printf '\n============================================================\n'
  printf 'PR-A02 TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$A02_MD"

  printf '\n============================================================\n'
  printf 'PR-A03 TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$A03_MD"

  printf '\n============================================================\n'
  printf 'PR-A04 TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$A04_MD"

  printf '\n============================================================\n'
  printf 'PR-A05 TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$A05_MD"

  printf '\n============================================================\n'
  printf 'PR-A06 TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$A06_MD"

  printf '\n============================================================\n'
  printf 'PR-A07 TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$A07_MD"
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
