#!/data/data/com.termux/files/usr/bin/bash
set -e

# ============================================================
# APPLY READY V1 EXECUTION BLOCK
# PERSONA_DATABASE_URL 前提
# ============================================================

ROOT="/data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site"
APPLY="$ROOT/140.apply-ready-v1"

if [ -z "$PERSONA_DATABASE_URL" ]; then
  echo "PERSONA_DATABASE_URL is not set."
  exit 1
fi

echo "============================================================"
echo "APPLY READY V1 EXECUTION BLOCK"
echo "============================================================"
echo "DB ENV : PERSONA_DATABASE_URL"
echo "ROOT   : $ROOT"
echo "APPLY  : $APPLY"
echo

echo "=== TARGET FILES ==="
printf '%s\n' \
  "$APPLY/001_PORTAL_APPLY_READY_V1.sql" \
  "$APPLY/002_CX22073JW_CORE_APPLY_READY_V1.sql" \
  "$APPLY/003_SCENARIO_CORE_APPLY_READY_V1.sql" \
  "$APPLY/004_PORTAL_SEED_READY_V1.sql" \
  "$APPLY/005_CX22073JW_SEED_READY_V1.sql"
echo

for f in \
  "$APPLY/001_PORTAL_APPLY_READY_V1.sql" \
  "$APPLY/002_CX22073JW_CORE_APPLY_READY_V1.sql" \
  "$APPLY/003_SCENARIO_CORE_APPLY_READY_V1.sql" \
  "$APPLY/004_PORTAL_SEED_READY_V1.sql" \
  "$APPLY/005_CX22073JW_SEED_READY_V1.sql"
do
  if [ ! -f "$f" ]; then
    echo "missing file: $f"
    exit 1
  fi
done

echo "=== DRY PREVIEW ORDER ==="
printf '%s\n' \
  "1. portal apply-ready v1" \
  "2. CX22073JW core apply-ready v1" \
  "3. scenario core apply-ready v1" \
  "4. portal seed-ready v1" \
  "5. CX22073JW seed-ready v1"
echo

echo "=== TO EXECUTE MANUALLY, RUN THESE ==="
printf '%s\n' \
  "psql \"\$PERSONA_DATABASE_URL\" -f \"$APPLY/001_PORTAL_APPLY_READY_V1.sql\"" \
  "psql \"\$PERSONA_DATABASE_URL\" -f \"$APPLY/002_CX22073JW_CORE_APPLY_READY_V1.sql\"" \
  "psql \"\$PERSONA_DATABASE_URL\" -f \"$APPLY/003_SCENARIO_CORE_APPLY_READY_V1.sql\"" \
  "psql \"\$PERSONA_DATABASE_URL\" -f \"$APPLY/004_PORTAL_SEED_READY_V1.sql\"" \
  "psql \"\$PERSONA_DATABASE_URL\" -f \"$APPLY/005_CX22073JW_SEED_READY_V1.sql\""
echo

echo "=== NOTE ==="
echo "This script does not execute SQL automatically."
echo "Review first, then execute manually if approved."
