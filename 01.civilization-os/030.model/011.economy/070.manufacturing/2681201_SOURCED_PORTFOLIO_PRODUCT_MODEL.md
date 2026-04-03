# ============================================================
# SOURCED PORTFOLIO PRODUCT MODEL
# ============================================================

status: canonical
layer: model
scope: industry-pack
component: sourced-portfolio-product

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PRODUCT ROLE
# ============================================================

sourced_portfolio_product is a retail-managed product record
for third-party or externally originated offerings
distributed through a retail company.


# ============================================================
# 2. PRODUCT FIELDS
# ============================================================

Recommended fields:
- product_id
- origin_product_ref
- rightsholder_ref
- seller_ref
- distribution_right_ref
- distribution_mode
- sale_state
- storefront_visibility


# ============================================================
# 3. FINAL RULE
# ============================================================

A sourced portfolio product must preserve
distribution-right traceability.
