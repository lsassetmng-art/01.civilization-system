#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

SQL_FILE="$ROOT/121.db-implementation-prep/121290_STATIC_ART_OS_PERSONA_REFERENCE_SQL_EXACT_DDL.sql"
NOTE_MD="$ROOT/121.db-implementation-prep/121291_STATIC_ART_OS_PERSONA_REFERENCE_SQL_DDL_ASSUMPTION_NOTE.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA REFERENCE SQL REVIEW
============================================================

Usage:
  bash 132.operations/132630_staticart_persona_reference_sql_review.sh help
  bash 132.operations/132630_staticart_persona_reference_sql_review.sh list
  bash 132.operations/132630_staticart_persona_reference_sql_review.sh sql
  bash 132.operations/132630_staticart_persona_reference_sql_review.sh note
  bash 132.operations/132630_staticart_persona_reference_sql_review.sh short
TEXT
}

show_list() {
  cat <<TEXT
$SQL_FILE
$NOTE_MD
TEXT
}

show_sql() {
  sed -n '1,320p' "$SQL_FILE"
}

show_note() {
  sed -n '1,220p' "$NOTE_MD"
}

show_short() {
  printf '\n============================================================\n'
  printf 'SQL EXACT DDL\n'
  printf '============================================================\n'
  sed -n '1,320p' "$SQL_FILE"

  printf '\n============================================================\n'
  printf 'ASSUMPTION NOTE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$NOTE_MD"
}

case "$MODE" in
  help|--help|-h)
    show_help
    ;;
  list)
    show_list
    ;;
  sql)
    show_sql
    ;;
  note)
    show_note
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
