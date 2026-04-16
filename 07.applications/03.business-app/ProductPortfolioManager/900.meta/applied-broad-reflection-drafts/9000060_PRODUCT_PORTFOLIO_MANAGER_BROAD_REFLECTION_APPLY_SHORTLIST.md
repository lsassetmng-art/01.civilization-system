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
