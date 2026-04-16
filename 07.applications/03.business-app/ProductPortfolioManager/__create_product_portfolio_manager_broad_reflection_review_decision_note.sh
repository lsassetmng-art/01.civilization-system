#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"
OUT="$BASE/900.meta/applied-broad-reflection-drafts"

mkdir -p "$OUT"

cat <<'EOF' > "$OUT/9000059_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_REVIEW_DECISION_NOTE.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER BROAD REFLECTION REVIEW DECISION NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Records review decisions for generated broad-reflection drafts.

decision_scale:
- accept_as_is
- accept_with_trim
- accept_with_placement_change
- hold
- reject_for_now

global_review_rules:
- original /mnt/data files remain unchanged
- draft review does not mean implementation start
- ERP truth boundary must remain explicit
- forecast advisory boundary must remain explicit
- ProductPortfolioManager must remain application-side judgment app
- wording depth must fit the target document role

# ============================================================
# 1. PORTAL REFLECTION NOTE
# ============================================================

target_file:
- 900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE__PPM_REFLECTION_DRAFT.md

review_decision: undecided
review_comment:
- good candidate for first acceptance
- discovery-oriented target
- richer summary acceptable here

# ============================================================
# 2. CIVILIZATION OS CANONICAL FULL REBUILT
# ============================================================

target_file:
- 003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT__PPM_REFLECTION_DRAFT.md

review_decision: undecided
review_comment:
- medium-depth insertion is probably natural
- confirm wording is not too long for the host document

# ============================================================
# 3. FOUNDATION CANONICAL
# ============================================================

target_file:
- 000000_FOUNDATION_CANONICAL__PPM_REFLECTION_DRAFT.md

review_decision: undecided
review_comment:
- must stay terse
- foundation meaning must remain primary

# ============================================================
# 4. SYSTEM RULES INTEGRATED
# ============================================================

target_file:
- 9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED__PPM_REFLECTION_DRAFT.md

review_decision: undecided
review_comment:
- should remain rules-first
- app mention must stay compact

# ============================================================
# 5. APPLICATION COMMON COMPONENT LEDGER
# ============================================================

target_file:
- 014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER__PPM_REFLECTION_DRAFT.md

review_decision: undecided
review_comment:
- confirm ProductPortfolioManager is shown as consumer only
- do not make it look like common component owner

# ============================================================
# 6. ERP DESIGN BIBLE
# ============================================================

target_file:
- ERP_DESIGN_BIBLE_FULL__PPM_REFLECTION_DRAFT.md

review_decision: undecided
review_comment:
- keep downstream-consumer wording strict
- ERP must remain clearly primary

# ============================================================
# 7. ERP ENTERPRISE SCOPE
# ============================================================

target_file:
- ERP_ENTERPRISE_SCOPE_v1__PPM_REFLECTION_DRAFT.md

review_decision: undecided
review_comment:
- keep downstream-consumer wording strict
- do not let scope blur ERP/app boundary

# ============================================================
# 8. FINAL REVIEW SUMMARY
# ============================================================

recommended_first_accept_candidates:
- 900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE__PPM_REFLECTION_DRAFT.md
- 003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT__PPM_REFLECTION_DRAFT.md

recommended_trim_candidates:
- 000000_FOUNDATION_CANONICAL__PPM_REFLECTION_DRAFT.md
- 9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED__PPM_REFLECTION_DRAFT.md

recommended_boundary-check candidates:
- ERP_DESIGN_BIBLE_FULL__PPM_REFLECTION_DRAFT.md
- ERP_ENTERPRISE_SCOPE_v1__PPM_REFLECTION_DRAFT.md

formal_conclusion:
Use this note to record which draft is acceptable for later manual reflection.
EOF

echo "CREATED: review decision note"
echo
sed -n '1,260p' "$OUT/9000059_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_REVIEW_DECISION_NOTE.md"
