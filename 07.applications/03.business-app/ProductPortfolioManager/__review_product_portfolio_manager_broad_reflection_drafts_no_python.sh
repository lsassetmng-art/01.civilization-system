#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"
OUT="$BASE/900.meta/applied-broad-reflection-drafts"

echo "============================================================"
echo "PRODUCT PORTFOLIO MANAGER"
echo "BROAD REFLECTION DRAFT REVIEW"
echo "============================================================"
echo

if [ ! -d "$OUT" ]; then
  echo "NG: draft directory not found"
  echo "$OUT"
  exit 1
fi

echo "=== DRAFT DIRECTORY ==="
echo "$OUT"
echo

echo "=== GENERATED DRAFT FILES ==="
find "$OUT" -maxdepth 1 -type f | sort
echo

echo "=== RECOMMENDED REVIEW ORDER ==="
echo "1. 900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE__PPM_REFLECTION_DRAFT.md"
echo "2. 003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT__PPM_REFLECTION_DRAFT.md"
echo "3. 000000_FOUNDATION_CANONICAL__PPM_REFLECTION_DRAFT.md"
echo "4. 9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED__PPM_REFLECTION_DRAFT.md"
echo "5. 014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER__PPM_REFLECTION_DRAFT.md"
echo "6. ERP_DESIGN_BIBLE_FULL__PPM_REFLECTION_DRAFT.md"
echo "7. ERP_ENTERPRISE_SCOPE_v1__PPM_REFLECTION_DRAFT.md"
echo

echo "=== IMPORTANT RULES ==="
echo "- original /mnt/data files are unchanged"
echo "- these are review drafts only"
echo "- do not treat reflection draft as implementation start"
echo "- keep ERP truth boundary clear"
echo "- keep forecast advisory boundary clear"
echo

echo "=== QUICK OPEN COMMAND EXAMPLES ==="
echo "sed -n '1,220p' \"$OUT/900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE__PPM_REFLECTION_DRAFT.md\""
echo "sed -n '1,260p' \"$OUT/003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT__PPM_REFLECTION_DRAFT.md\""
echo "sed -n '1,220p' \"$OUT/000000_FOUNDATION_CANONICAL__PPM_REFLECTION_DRAFT.md\""
echo

echo "=== REVIEW CHECKPOINTS ==="
echo "1. ProductPortfolioManager is described as lightweight product strategy judgment app"
echo "2. implementation not started is still clear"
echo "3. ERP fact boundary is preserved"
echo "4. forecast advisory boundary is preserved"
echo "5. inserted wording fits target file depth"
echo "6. target file readability is not degraded"
echo

echo "DONE: no-python review guide ready"
