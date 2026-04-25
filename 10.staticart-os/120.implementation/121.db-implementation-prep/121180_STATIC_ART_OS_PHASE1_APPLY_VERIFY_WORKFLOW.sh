#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="$HOME/01.civilization-system/10.staticart-os/121.db-implementation-prep"
SQLBASE="$BASE/sql"
VERIFYBASE="$BASE/verification"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PHASE1 APPLY / VERIFY WORKFLOW
============================================================

Usage:
  bash 121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh precheck
  bash 121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh apply
  bash 121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh verify
  bash 121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh full
  bash 121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh help

Modes:
  precheck  : check PERSONA_DATABASE_URL and file presence only
  apply     : run Phase 1 SQL apply runner
  verify    : run Phase 1 full verification
  full      : precheck -> apply -> verify
TEXT
}

require_persona_env() {
  if [ -z "${PERSONA_DATABASE_URL:-}" ]; then
    echo "ERROR: PERSONA_DATABASE_URL is not set"
    exit 1
  fi
}

require_files() {
  for f in \
    "$SQLBASE/001_staticart_schema_and_enums.sql" \
    "$SQLBASE/010_staticart_asset_master.sql" \
    "$SQLBASE/020_staticart_asset_version.sql" \
    "$SQLBASE/030_staticart_files_and_metadata.sql" \
    "$SQLBASE/040_staticart_policy_and_commerce.sql" \
    "$SQLBASE/050_staticart_review_and_audit.sql" \
    "$SQLBASE/060_staticart_entitlement_and_continuity.sql" \
    "$SQLBASE/070_staticart_projection_tables.sql" \
    "$SQLBASE/900_staticart_phase1_apply_runner.sh" \
    "$VERIFYBASE/911_staticart_phase1_env_check.sh" \
    "$VERIFYBASE/990_staticart_phase1_full_verify.sh"
  do
    if [ ! -f "$f" ]; then
      echo "ERROR: missing file -> $f"
      exit 1
    fi
  done
}

run_precheck() {
  printf '\n============================================================\n'
  printf 'STATICART PHASE1 PRECHECK\n'
  printf '============================================================\n'
  require_persona_env
  require_files
  bash "$VERIFYBASE/911_staticart_phase1_env_check.sh"
  echo "OK: precheck passed"
}

run_apply() {
  printf '\n============================================================\n'
  printf 'STATICART PHASE1 APPLY\n'
  printf '============================================================\n'
  require_persona_env
  require_files
  echo "NOTICE: SQL review with Sato must be completed before apply"
  bash "$SQLBASE/900_staticart_phase1_apply_runner.sh"
}

run_verify() {
  printf '\n============================================================\n'
  printf 'STATICART PHASE1 VERIFY\n'
  printf '============================================================\n'
  require_persona_env
  require_files
  bash "$VERIFYBASE/990_staticart_phase1_full_verify.sh"
}

case "$MODE" in
  precheck)
    run_precheck
    ;;
  apply)
    run_apply
    ;;
  verify)
    run_verify
    ;;
  full)
    run_precheck
    run_apply
    run_verify
    ;;
  help|--help|-h)
    show_help
    ;;
  *)
    echo "ERROR: unknown mode -> $MODE"
    show_help
    exit 1
    ;;
esac
