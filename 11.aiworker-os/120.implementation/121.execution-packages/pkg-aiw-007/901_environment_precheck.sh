#!/data/data/com.termux/files/usr/bin/bash
set -eu

PKG_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
BASE_DIR="$(CDPATH= cd -- "$PKG_DIR/.." && pwd)"

printf '%s\n' '============================================================'
printf '%s\n' 'PKG-AIW-007 ENVIRONMENT PRECHECK'
printf '%s\n' '============================================================'

if [ "${PERSONA_DATABASE_URL:-}" = "" ]; then
  printf '%s\n' 'ERROR: PERSONA_DATABASE_URL is not set.'
  exit 1
fi

for PKG in pkg-aiw-001 pkg-aiw-002 pkg-aiw-003 pkg-aiw-004 pkg-aiw-005 pkg-aiw-006; do
  if [ ! -d "$BASE_DIR/$PKG" ]; then
    printf '%s\n' "ERROR: missing package directory: $BASE_DIR/$PKG"
    exit 1
  fi
done

printf '%s\n' 'PASS: PERSONA_DATABASE_URL is set'
printf '%s\n' 'PASS: pkg-aiw-001 through pkg-aiw-006 directories exist'
printf '%s\n' '============================================================'
