#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

INIT_TMPL_MD="$ROOT/131.implementation-roadmap/131454_STATIC_ART_OS_PERSONA_REFERENCE_STORAGE_INITIALIZATION_RUNNER_ACTUAL_TEMPLATE.md"
REFRESH_TMPL_MD="$ROOT/131.implementation-roadmap/131455_STATIC_ART_OS_PERSONA_REFERENCE_REGISTRY_QUEUE_REFRESH_RUNNER_ACTUAL_TEMPLATE.md"
AUDIT_TMPL_MD="$ROOT/131.implementation-roadmap/131456_STATIC_ART_OS_PERSONA_REFERENCE_CONSISTENCY_AUDIT_RUNNER_ACTUAL_TEMPLATE.md"
DRYRUN_TMPL_MD="$ROOT/131.implementation-roadmap/131457_STATIC_ART_OS_PERSONA_REFERENCE_DRY_RUN_REPORT_ACTUAL_TEMPLATE.md"
APPLY_TMPL_MD="$ROOT/131.implementation-roadmap/131458_STATIC_ART_OS_PERSONA_REFERENCE_APPLY_REPORT_ACTUAL_TEMPLATE.md"
CHECKLIST_TMPL_MD="$ROOT/131.implementation-roadmap/131459_STATIC_ART_OS_PERSONA_REFERENCE_RUNNER_OPERATOR_INVOCATION_CHECKLIST_TEMPLATE.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA REFERENCE RUNNER ACTUAL TEMPLATE REVIEW
============================================================

Usage:
  bash 132.operations/132870_staticart_persona_reference_runner_actual_template_review.sh help
  bash 132.operations/132870_staticart_persona_reference_runner_actual_template_review.sh list
  bash 132.operations/132870_staticart_persona_reference_runner_actual_template_review.sh short
  bash 132.operations/132870_staticart_persona_reference_runner_actual_template_review.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$INIT_TMPL_MD
$REFRESH_TMPL_MD
$AUDIT_TMPL_MD
$DRYRUN_TMPL_MD
$APPLY_TMPL_MD
$CHECKLIST_TMPL_MD
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'INITIALIZATION RUNNER ACTUAL TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$INIT_TMPL_MD"

  printf '\n============================================================\n'
  printf 'REFRESH RUNNER ACTUAL TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$REFRESH_TMPL_MD"

  printf '\n============================================================\n'
  printf 'AUDIT RUNNER ACTUAL TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$AUDIT_TMPL_MD"

  printf '\n============================================================\n'
  printf 'DRY RUN REPORT ACTUAL TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$DRYRUN_TMPL_MD"

  printf '\n============================================================\n'
  printf 'APPLY REPORT ACTUAL TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$APPLY_TMPL_MD"

  printf '\n============================================================\n'
  printf 'OPERATOR INVOCATION CHECKLIST TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$CHECKLIST_TMPL_MD"
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
