#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"
OUT="$BASE/900.meta/applied-broad-reflection-drafts"

mkdir -p "$OUT"

cat <<'EOF' > "$OUT/9000060_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_APPLY_SHORTLIST.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER BROAD REFLECTION APPLY SHORTLIST
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Extracts the first-pass apply shortlist
from the generated broad-reflection drafts.

selection_principles:
- prioritize discovery value
- prefer low semantic risk
- keep insertion depth appropriate to target
- do not open implementation meaning
- preserve ERP / forecast / judgment boundaries

# ============================================================
# 1. FIRST-PASS APPLY SHORTLIST
# ============================================================

first_pass_apply_shortlist:

  - shortlist_rank: 1
    target_draft:
      900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE__PPM_REFLECTION_DRAFT.md
    target_original:
      /mnt/data/900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md
    reason:
      Highest discovery value.
      Discovery-oriented note can naturally accept medium-depth ProductPortfolioManager summary.

  - shortlist_rank: 2
    target_draft:
      003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT__PPM_REFLECTION_DRAFT.md
    target_original:
      /mnt/data/003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md
    reason:
      Broad canonical landscape file.
      Good place to make ProductPortfolioManager discoverable at system level.

# ============================================================
# 2. SECOND-PASS CANDIDATES
# ============================================================

second_pass_candidates:

  - target_draft:
      000000_FOUNDATION_CANONICAL__PPM_REFLECTION_DRAFT.md
    target_original:
      /mnt/data/000000_FOUNDATION_CANONICAL.md
    reason:
      Useful, but wording must stay very terse.

  - target_draft:
      9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED__PPM_REFLECTION_DRAFT.md
    target_original:
      /mnt/data/9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md
    reason:
      Useful, but rules-first character must remain dominant.

# ============================================================
# 3. BOUNDARY-SENSITIVE CANDIDATES
# ============================================================

boundary_sensitive_candidates:

  - target_draft:
      ERP_DESIGN_BIBLE_FULL__PPM_REFLECTION_DRAFT.md
    target_original:
      /mnt/data/ERP_DESIGN_BIBLE_FULL.md
    reason:
      Must remain strict downstream-consumer note only.

  - target_draft:
      ERP_ENTERPRISE_SCOPE_v1__PPM_REFLECTION_DRAFT.md
    target_original:
      /mnt/data/ERP_ENTERPRISE_SCOPE_v1.md
    reason:
      Must remain strict downstream-consumer note only.

# ============================================================
# 4. SPECIAL-FRAMING CANDIDATE
# ============================================================

special_framing_candidate:

  - target_draft:
      014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER__PPM_REFLECTION_DRAFT.md
    target_original:
      /mnt/data/014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md
    reason:
      Must frame ProductPortfolioManager as common-capability consumer only.

# ============================================================
# 5. FIRST-PASS APPLY RULES
# ============================================================

first_pass_apply_rules:
- start with portal reflection note
- then move to Civilization OS canonical full rebuilt
- do not apply second-pass files before confirming first-pass wording feels natural
- do not apply boundary-sensitive files before final wording check
- original /mnt/data files must be backed by review confidence before any manual reflection

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
The safest initial apply shortlist is:
1. portal reflection note
2. Civilization OS canonical full rebuilt
EOF

cat <<'EOF' > "$OUT/9000061_PRODUCT_PORTFOLIO_MANAGER_SHORTLIST_REVIEW_COMMANDS.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER SHORTLIST REVIEW COMMANDS
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides quick shell commands
for reviewing the shortlisted drafts first.

recommended_commands:

  portal_reflection_note:
    sed -n '1,260p' /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/900.meta/applied-broad-reflection-drafts/900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE__PPM_REFLECTION_DRAFT.md

  civilization_os_canonical:
    sed -n '1,280p' /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/900.meta/applied-broad-reflection-drafts/003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT__PPM_REFLECTION_DRAFT.md

  shortlist_note:
    sed -n '1,240p' /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/900.meta/applied-broad-reflection-drafts/9000060_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_APPLY_SHORTLIST.md

formal_conclusion:
Review these first before considering any later manual reflection.
EOF

echo "CREATED: apply shortlist notes"
echo
sed -n '1,240p' "$OUT/9000060_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_APPLY_SHORTLIST.md"
echo
sed -n '1,220p' "$OUT/9000061_PRODUCT_PORTFOLIO_MANAGER_SHORTLIST_REVIEW_COMMANDS.md"
