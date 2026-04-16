#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"
OUT="$BASE/900.meta/applied-broad-reflection-drafts"

PORTAL="$OUT/900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE__PPM_REFLECTION_DRAFT.md"
CIVOS="$OUT/003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT__PPM_REFLECTION_DRAFT.md"

echo "============================================================"
echo "PRODUCT PORTFOLIO MANAGER"
echo "TOP-2 BROAD REFLECTION DRAFT COMPARE"
echo "============================================================"
echo

if [ ! -f "$PORTAL" ]; then
  echo "NG: not found"
  echo "$PORTAL"
  exit 1
fi

if [ ! -f "$CIVOS" ]; then
  echo "NG: not found"
  echo "$CIVOS"
  exit 1
fi

echo "=== TARGET 1 ==="
echo "$PORTAL"
echo
sed -n '1,260p' "$PORTAL"
echo

echo "=== TARGET 2 ==="
echo "$CIVOS"
echo
sed -n '1,280p' "$CIVOS"
echo

echo "=== SIDE-BY-SIDE REVIEW POINTS ==="
echo "1. portal note is allowed to be slightly richer and discovery-oriented"
echo "2. civilization os canonical must stay broader and more compact"
echo "3. both must keep 'implementation not started' clear"
echo "4. both must keep ERP truth boundary clear"
echo "5. both must keep forecast advisory boundary clear"
echo "6. neither should read like implementation or low-level schema detail"
echo

echo "=== QUICK LENGTH CHECK ==="
echo "-- portal draft lines --"
wc -l "$PORTAL"
echo "-- civilization os draft lines --"
wc -l "$CIVOS"
echo

echo "=== QUICK APPENDED BLOCK SEARCH ==="
echo "-- portal draft additive marker --"
grep -n "ADDITIVE PORTAL REFLECTION DRAFT" "$PORTAL" || true
echo "-- civ os draft additive marker --"
grep -n "ADDITIVE APPLICATION REFLECTION DRAFT" "$CIVOS" || true
echo

echo "=== RECOMMENDED DECISION FRAME ==="
echo "- portal: accept_as_is or accept_with_trim"
echo "- civ os: accept_as_is or accept_with_trim"
echo "- if either feels too long, trim wording before any manual reflection"
echo

echo "DONE: top-2 compare completed"
