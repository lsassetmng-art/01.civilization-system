#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

INDEX="$ROOT/920.meta/079.evidence_pack/000001_STATIC_ART_OS_EVIDENCE_INDEX.md"
MANIFEST="$ROOT/920.meta/079.evidence_pack/000002_STATIC_ART_OS_REPORT_MANIFEST.txt"
AUDIT="$ROOT/920.meta/079.evidence_pack/000003_STATIC_ART_OS_AUDIT_TRAIL_SUMMARY.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART EVIDENCE PORTAL
============================================================

Usage:
  bash 132.operations/132480_staticart_evidence_portal.sh help
  bash 132.operations/132480_staticart_evidence_portal.sh list
  bash 132.operations/132480_staticart_evidence_portal.sh index
  bash 132.operations/132480_staticart_evidence_portal.sh audit
  bash 132.operations/132480_staticart_evidence_portal.sh manifest
  bash 132.operations/132480_staticart_evidence_portal.sh short
TEXT
}

show_list() {
  cat <<TEXT
$INDEX
$MANIFEST
$AUDIT
TEXT
}

show_index() {
  sed -n '1,160p' "$INDEX"
}

show_audit() {
  sed -n '1,220p' "$AUDIT"
}

show_manifest() {
  sed -n '1,240p' "$MANIFEST"
}

show_short() {
  printf '\n============================================================\n'
  printf 'EVIDENCE INDEX\n'
  printf '============================================================\n'
  sed -n '1,160p' "$INDEX"

  printf '\n============================================================\n'
  printf 'AUDIT TRAIL SUMMARY\n'
  printf '============================================================\n'
  sed -n '1,220p' "$AUDIT"
}

case "$MODE" in
  help|--help|-h)
    show_help
    ;;
  list)
    show_list
    ;;
  index)
    show_index
    ;;
  audit)
    show_audit
    ;;
  manifest)
    show_manifest
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
