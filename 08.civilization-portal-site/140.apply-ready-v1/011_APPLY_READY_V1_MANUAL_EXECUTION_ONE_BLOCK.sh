#!/data/data/com.termux/files/usr/bin/bash
set -e

# ============================================================
# APPLY READY V1 MANUAL EXECUTION ONE BLOCK
# PERSONA_DATABASE_URL 前提
# ※ このファイルは実行SQLを含む。承認後のみ使用
# ============================================================

ROOT="/data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site"
APPLY="$ROOT/140.apply-ready-v1"

if [ -z "$PERSONA_DATABASE_URL" ]; then
  echo "PERSONA_DATABASE_URL is not set."
  exit 1
fi

psql "$PERSONA_DATABASE_URL" -f "$APPLY/001_PORTAL_APPLY_READY_V1.sql"
psql "$PERSONA_DATABASE_URL" -f "$APPLY/002_CX22073JW_CORE_APPLY_READY_V1.sql"
psql "$PERSONA_DATABASE_URL" -f "$APPLY/003_CX22073JW_SINARIO_CORE_APPLY_READY_V1.sql"
psql "$PERSONA_DATABASE_URL" -f "$APPLY/004_PORTAL_SEED_READY_V1.sql"
psql "$PERSONA_DATABASE_URL" -f "$APPLY/005_CX22073JW_SEED_READY_V1.sql"

echo
echo "============================================================"
echo "APPLY READY V1 EXECUTION DONE"
echo "============================================================"
