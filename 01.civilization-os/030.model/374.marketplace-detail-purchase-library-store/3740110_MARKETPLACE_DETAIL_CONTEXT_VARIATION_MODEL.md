# ============================================================
# MARKETPLACE DETAIL CONTEXT VARIATION MODEL
# ============================================================

status: canonical
layer: model
scope: marketplace-detail-purchase-library-store
component: marketplace-detail-context-variation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CONTEXT VARIATIONS
# ============================================================

context_variations:
- civilization_global_detail
- nation_market_detail
- company_store_detail
- tenant_market_detail
- library_origin_detail


# ============================================================
# 2. VARIATION RULES
# ============================================================

variation_rules:
- civilization_global_detail emphasizes broad discovery and related exploration
- nation_market_detail emphasizes nation availability, tax, and restriction notes
- company_store_detail emphasizes brand and seller relationship
- tenant_market_detail emphasizes building and tenant context banner
- library_origin_detail emphasizes ownership and reuse status


# ============================================================
# 3. FINAL RULE
# ============================================================

Detail context may change emphasis,
but not product truth,
price truth,
or access truth.
