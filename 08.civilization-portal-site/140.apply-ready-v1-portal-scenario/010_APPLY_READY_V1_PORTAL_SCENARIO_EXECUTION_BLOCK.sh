#!/data/data/com.termux/files/usr/bin/bash
set -e

ROOT="/data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site"
APPLY="$ROOT/140.apply-ready-v1-portal-scenario"

if [ -z "$PERSONA_DATABASE_URL" ]; then
  echo "PERSONA_DATABASE_URL is not set."
  exit 1
fi

echo "============================================================"
echo "APPLY READY V1 EXECUTION BLOCK"
echo "portal + scenario only"
echo "============================================================"
echo "DB ENV : PERSONA_DATABASE_URL"
echo "ROOT   : $ROOT"
echo "APPLY  : $APPLY"
echo

printf '%s\n' \
  "psql \"\$PERSONA_DATABASE_URL\" -f \"$APPLY/001_PORTAL_APPLY_READY_V1.sql\"" \
  "psql \"\$PERSONA_DATABASE_URL\" -f \"$APPLY/002_SCENARIO_APPLY_READY_V1.sql\"" \
  "psql \"\$PERSONA_DATABASE_URL\" -f \"$APPLY/003_PORTAL_SEED_READY_V1.sql\"" \
  "psql \"\$PERSONA_DATABASE_URL\" -f \"$APPLY/004_SCENARIO_SEED_READY_V1.sql\""
echo
echo "This script is preview only and does not auto-execute."
