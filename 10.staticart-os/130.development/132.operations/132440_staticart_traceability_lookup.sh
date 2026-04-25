#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

TRACE="$ROOT/920.meta/076.traceability_pack/000001_STATIC_ART_OS_TRACEABILITY_MATRIX.md"
PURPOSE="$ROOT/920.meta/076.traceability_pack/000002_STATIC_ART_OS_ARTIFACT_PURPOSE_MAP.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART TRACEABILITY LOOKUP
============================================================

Usage:
  bash 132.operations/132440_staticart_traceability_lookup.sh help
  bash 132.operations/132440_staticart_traceability_lookup.sh matrix
  bash 132.operations/132440_staticart_traceability_lookup.sh purpose
  bash 132.operations/132440_staticart_traceability_lookup.sh short
TEXT
}

show_matrix() {
  sed -n '1,220p' "$TRACE"
}

show_purpose() {
  sed -n '1,220p' "$PURPOSE"
}

show_short() {
  printf '\n============================================================\n'
  printf 'TRACEABILITY MATRIX\n'
  printf '============================================================\n'
  sed -n '1,180p' "$TRACE"

  printf '\n============================================================\n'
  printf 'ARTIFACT PURPOSE MAP\n'
  printf '============================================================\n'
  sed -n '1,180p' "$PURPOSE"
}

case "$MODE" in
  help|--help|-h)
    show_help
    ;;
  matrix)
    show_matrix
    ;;
  purpose)
    show_purpose
    ;;
  short)
    show_short
    ;;
  *)
    echo "ERROR: unknown mode -> $MODE"
    show_help
    exit 1
    ;;
esac
