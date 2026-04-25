#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

TREE="$ROOT/920.meta/077.question_navigator_pack/000001_STATIC_ART_OS_QUESTION_TO_ACTION_DECISION_TREE.md"
FAQ="$ROOT/920.meta/077.question_navigator_pack/000002_STATIC_ART_OS_OPERATOR_FAQ.md"
GUIDE="$ROOT/920.meta/077.question_navigator_pack/000003_STATIC_ART_OS_WHICH_LAUNCHER_TO_USE_GUIDE.md"

SWEEP="$ROOT/132.operations/132410_staticart_master_readonly_sweep.sh"
LANDING="$ROOT/132.operations/132350_staticart_final_landing_portal.sh"
TRACE="$ROOT/132.operations/132440_staticart_traceability_lookup.sh"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART QUESTION NAVIGATOR
============================================================

Usage:
  bash 132.operations/132450_staticart_question_navigator.sh help
  bash 132.operations/132450_staticart_question_navigator.sh tree
  bash 132.operations/132450_staticart_question_navigator.sh faq
  bash 132.operations/132450_staticart_question_navigator.sh guide
  bash 132.operations/132450_staticart_question_navigator.sh short
  bash 132.operations/132450_staticart_question_navigator.sh review
TEXT
}

show_tree() {
  sed -n '1,220p' "$TREE"
}

show_faq() {
  sed -n '1,220p' "$FAQ"
}

show_guide() {
  sed -n '1,260p' "$GUIDE"
}

show_short() {
  printf '\n============================================================\n'
  printf 'DECISION TREE\n'
  printf '============================================================\n'
  sed -n '1,180p' "$TREE"

  printf '\n============================================================\n'
  printf 'FAQ\n'
  printf '============================================================\n'
  sed -n '1,180p' "$FAQ"

  printf '\n============================================================\n'
  printf 'LAUNCHER GUIDE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$GUIDE"
}

run_review() {
  bash "$LANDING" short
  bash "$TRACE" short
}

case "$MODE" in
  help|--help|-h)
    show_help
    ;;
  tree)
    show_tree
    ;;
  faq)
    show_faq
    ;;
  guide)
    show_guide
    ;;
  short)
    show_short
    ;;
  review)
    run_review
    ;;
  *)
    echo "ERROR: unknown mode -> $MODE"
    show_help
    exit 1
    ;;
esac
