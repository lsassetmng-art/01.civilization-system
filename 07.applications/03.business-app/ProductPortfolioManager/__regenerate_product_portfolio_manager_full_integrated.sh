#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"
OUT="$BASE/00_PRODUCT_PORTFOLIO_MANAGER_FULL_INTEGRATED_REGENERATED.md"
TMP="$BASE/.tmp_product_portfolio_manager_full_integrated.md"

mkdir -p "$BASE"

rm -f "$TMP"

cat <<'EOF' > "$TMP"
# ============================================================
# PRODUCT PORTFOLIO MANAGER FULL INTEGRATED REGENERATED
# ============================================================

status: canonical-regenerated
system: applications
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
This file is the regenerated full integrated document for ProductPortfolioManager.
It concatenates the main design documents in navigation order
so the whole design can be read from one file.

regeneration_rules:
- additive only
- source files are not modified
- scripts are excluded
- tmp / generated helper files are excluded
- this file is a reading bundle, not a new source of truth beyond the underlying files

base_path:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager
EOF

append_file() {
  F="$1"
  if [ -f "$F" ]; then
    echo >> "$TMP"
    echo "# ============================================================" >> "$TMP"
    echo "# SOURCE FILE: $F" >> "$TMP"
    echo "# ============================================================" >> "$TMP"
    echo >> "$TMP"
    cat "$F" >> "$TMP"
    echo >> "$TMP"
  fi
}

# ------------------------------------------------------------
# 0. ROOT
# ------------------------------------------------------------
append_file "$BASE/000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md"
append_file "$BASE/000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md"
append_file "$BASE/00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md"

# ------------------------------------------------------------
# 1. MAIN LAYERS
# ------------------------------------------------------------
for DIR in \
  "010.constitution" \
  "020.architecture" \
  "030.model" \
  "040.runtime" \
  "050.flow" \
  "060.integration" \
  "070.operations" \
  "080.policy" \
  "100.security" \
  "110.infrastructure" \
  "120.implementation" \
  "130.development" \
  "900.meta"
do
  if [ -d "$BASE/$DIR" ]; then
    find "$BASE/$DIR" -maxdepth 1 -type f -name '*.md' | sort | while read -r F; do
      append_file "$F"
    done
  fi
done

# ------------------------------------------------------------
# 2. SUB-META FOLDERS
# ------------------------------------------------------------
for DIR in \
  "900.meta/index-reflection" \
  "900.meta/compression-pass" \
  "900.meta/copy-blocks" \
  "900.meta/handoff-bundle" \
  "900.meta/broad-reflection-plan" \
  "900.meta/wide-insert-pack" \
  "900.meta/wide-reflection-execution" \
  "900.meta/uploaded-broad-target-map" \
  "900.meta/uploaded-target-patch-proposals" \
  "900.meta/applied-broad-reflection-drafts" \
  "900.meta/phase1-entry-pack"
do
  if [ -d "$BASE/$DIR" ]; then
    find "$BASE/$DIR" -maxdepth 1 -type f -name '*.md' | sort | while read -r F; do
      append_file "$F"
    done
  fi
done

mv "$TMP" "$OUT"

echo "============================================================"
echo "REGENERATED"
echo "============================================================"
echo "$OUT"
echo
echo "=== SIZE ==="
wc -lc "$OUT"
echo
echo "=== HEAD ==="
sed -n '1,80p' "$OUT"
echo
echo "=== TAIL ==="
tail -n 40 "$OUT"
