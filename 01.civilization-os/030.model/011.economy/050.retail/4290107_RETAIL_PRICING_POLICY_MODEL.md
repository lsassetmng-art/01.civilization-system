# ============================================================
# RETAIL PRICING POLICY MODEL
# ============================================================

status: canonical
layer: model
scope: retail-detailed-configuration-and-auto-operation
component: retail-pricing-policy

owner: Boss
prepared_by: Zero


# ============================================================
# 1. POLICIES
# ============================================================

retail_pricing_policies:
- low_price_volume
- balanced_margin
- premium_local
- loss_leader_campaign
- clearance_heavy
- regulation_following


# ============================================================
# 2. FINAL RULE
# ============================================================

Pricing policy
must influence sales, margin, and access.
