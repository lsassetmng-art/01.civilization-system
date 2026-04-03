# ============================================================
# CIVILIZATION NATION LISTING AND ZONING FLOW
# ============================================================

status: canonical
layer: 050.flow
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the operational flow for nation listing style
and zoning inside CivilizationOS.


# ============================================================
# 1. LISTING STYLE FLOW
# ============================================================

nation config draft
-> listing system style selected
-> market tiers defined
-> tier threshold rules configured
-> company-type eligibility rules configured
-> validation
-> publication


# ============================================================
# 2. COMPANY LISTING FLOW
# ============================================================

company operates
-> listing readiness checked against target market tier
-> listing application submitted
-> review
-> approved_for_listing or rejected
-> listed if approved


# ============================================================
# 3. ZONING FLOW
# ============================================================

nation config draft
-> zone created
-> allowed company types configured
-> allowed site/store types configured
-> restriction rules configured
-> validation
-> publication


# ============================================================
# 4. OPENING COMPATIBILITY FLOW
# ============================================================

company wants to open
-> target zone identified
-> company/site/store compatibility checked
-> opening allowed or denied
-> opening proceeds and nation notification follows if allowed


# ============================================================
# 5. FINAL FLOW RULE
# ============================================================

Nation listing and zoning flow must remain:
- nation-config-aware
- threshold-aware
- market-tier-aware
- zone-aware
- compatibility-aware
