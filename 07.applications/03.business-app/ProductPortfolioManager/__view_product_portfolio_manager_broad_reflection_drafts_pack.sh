#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"
OUT="$BASE/900.meta/applied-broad-reflection-drafts"

echo "============================================================"
echo "PRODUCT PORTFOLIO MANAGER"
echo "BROAD REFLECTION DRAFT VIEW PACK"
echo "============================================================"
echo

if [ ! -d "$OUT" ]; then
  echo "NG: draft directory not found"
  echo "$OUT"
  exit 1
fi

show_file() {
  TITLE="$1"
  FILE="$2"
  LINES="${3:-220}"

  echo "------------------------------------------------------------"
  echo "$TITLE"
  echo "------------------------------------------------------------"
  if [ -f "$FILE" ]; then
    sed -n "1,${LINES}p" "$FILE"
  else
    echo "SKIP: not found -> $FILE"
  fi
  echo
}

echo "=== DRAFT DIRECTORY ==="
echo "$OUT"
echo

echo "=== FILE LIST ==="
find "$OUT" -maxdepth 1 -type f | sort
echo

echo "=== REVIEW ORDER 1/7 ==="
show_file \
  "PORTAL REFLECTION DRAFT" \
  "$OUT/900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE__PPM_REFLECTION_DRAFT.md" \
  240

echo "=== REVIEW ORDER 2/7 ==="
show_file \
  "CIVILIZATION OS CANONICAL FULL REBUILT DRAFT" \
  "$OUT/003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT__PPM_REFLECTION_DRAFT.md" \
  260

echo "=== REVIEW ORDER 3/7 ==="
show_file \
  "FOUNDATION CANONICAL DRAFT" \
  "$OUT/000000_FOUNDATION_CANONICAL__PPM_REFLECTION_DRAFT.md" \
  220

echo "=== REVIEW ORDER 4/7 ==="
show_file \
  "SYSTEM RULES INTEGRATED DRAFT" \
  "$OUT/9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED__PPM_REFLECTION_DRAFT.md" \
  220

echo "=== REVIEW ORDER 5/7 ==="
show_file \
  "APPLICATION COMMON COMPONENT LEDGER DRAFT" \
  "$OUT/014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER__PPM_REFLECTION_DRAFT.md" \
  220

echo "=== REVIEW ORDER 6/7 ==="
show_file \
  "ERP DESIGN BIBLE DRAFT" \
  "$OUT/ERP_DESIGN_BIBLE_FULL__PPM_REFLECTION_DRAFT.md" \
  220

echo "=== REVIEW ORDER 7/7 ==="
show_file \
  "ERP ENTERPRISE SCOPE DRAFT" \
  "$OUT/ERP_ENTERPRISE_SCOPE_v1__PPM_REFLECTION_DRAFT.md" \
  220

echo "=== REVIEW CHECKPOINTS ==="
echo "1. implementation not started is still clear"
echo "2. ERP truth boundary is preserved"
echo "3. forecast advisory boundary is preserved"
echo "4. target file readability is not degraded"
echo "5. wording depth fits the target file role"
echo

echo "DONE: no-python draft view pack completed"
