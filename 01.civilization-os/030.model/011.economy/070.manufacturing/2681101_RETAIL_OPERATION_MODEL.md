# ============================================================
# RETAIL OPERATION MODEL
# ============================================================

status: canonical
layer: model
scope: industry-pack
component: retail-operation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CORE FLOW
# ============================================================

- sourcing_candidate_identified
- rightsholder_relation_confirmed
- distribution_right_confirmed
- product_portfolio_registered
- price_defined
- storefront_or_listing_opened
- sale_processed
- entitlement_or_access_delivered


# ============================================================
# 2. DISTRIBUTION MODES
# ============================================================

Supported modes:
- self_sale
- retail_resale
- retail_agency_sale
- exclusive_distribution
- multi_retail_distribution


# ============================================================
# 3. FINAL RULE
# ============================================================

Retail operation must explicitly distinguish
originator, seller, and distribution right.
