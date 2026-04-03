# ============================================================
# MARKETPLACE PRICING FEE AND TAX MODEL
# ============================================================

status: canonical
layer: model
scope: digital-marketplace
component: marketplace-pricing-fee-and-tax

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PRICE MODES
# ============================================================

price_modes:
- fixed_price
- discounted_price
- limited_time_price
- bundle_price
- subscription_price
- premium_certified_price


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

pricing_fields:
- listing_id
- base_price
- platform_fee
- seller_fee_profile
- nation_tax_profile
- campaign_discount_profile
- bundle_discount_supported
- premium_badge_markup_supported
- refund_profile


# ============================================================
# 3. FINAL RULE
# ============================================================

Pricing must separate
base value,
platform fee,
seller fee,
and nation tax effect.
