#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

ACCEPT_MD="$ROOT/131.implementation-roadmap/131396_STATIC_ART_OS_IMPLEMENTATION_EXECUTION_ACCEPTANCE_CRITERIA_EXACT.md"
VERIFY_MD="$ROOT/131.implementation-roadmap/131397_STATIC_ART_OS_POST_IMPLEMENTATION_VERIFICATION_MATRIX.md"
RELEASE_MD="$ROOT/132.operations/132740_STATIC_ART_OS_RELEASE_READINESS_AND_ROLLOUT_GATE_EXACT.md"
ROLLBACK_MD="$ROOT/132.operations/132741_STATIC_ART_OS_ROLLBACK_DECISION_AND_DISABLEMENT_CRITERIA_EXACT.md"
CERT_MD="$ROOT/920.meta/102.post_implementation_release_readiness_pack/000001_STATIC_ART_OS_IMPLEMENTATION_COMPLETION_CERTIFICATION_NOTE.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART POST IMPLEMENTATION RELEASE REVIEW PORTAL
============================================================

Usage:
  bash 132.operations/132750_staticart_post_implementation_release_review_portal.sh help
  bash 132.operations/132750_staticart_post_implementation_release_review_portal.sh list
  bash 132.operations/132750_staticart_post_implementation_release_review_portal.sh short
TEXT
}

show_list() {
  cat <<TEXT
$ACCEPT_MD
$VERIFY_MD
$RELEASE_MD
$ROLLBACK_MD
$CERT_MD
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'IMPLEMENTATION ACCEPTANCE CRITERIA\n'
  printf '============================================================\n'
  sed -n '1,220p' "$ACCEPT_MD"

  printf '\n============================================================\n'
  printf 'POST IMPLEMENTATION VERIFICATION MATRIX\n'
  printf '============================================================\n'
  sed -n '1,220p' "$VERIFY_MD"

  printf '\n============================================================\n'
  printf 'RELEASE READINESS GATE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$RELEASE_MD"

  printf '\n============================================================\n'
  printf 'ROLLBACK / DISABLEMENT CRITERIA\n'
  printf '============================================================\n'
  sed -n '1,220p' "$ROLLBACK_MD"

  printf '\n============================================================\n'
  printf 'IMPLEMENTATION COMPLETION CERTIFICATION NOTE\n'
  printf '============================================================\n'
  sed -n '1,200p' "$CERT_MD"
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
  *)
    echo "ERROR: unknown mode -> $MODE"
    show_help
    exit 1
    ;;
esac
