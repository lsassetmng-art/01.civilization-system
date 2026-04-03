# ============================================================
# RETAIL SHELF POLICY MODEL
# ============================================================

status: canonical
layer: model
scope: retail-detailed-configuration-and-auto-operation
component: retail-shelf-policy

owner: Boss
prepared_by: Zero


# ============================================================
# 1. POLICIES
# ============================================================

retail_shelf_policies:
- balanced
- impulse_purchase_heavy
- staple_priority
- local_goods_priority
- high_margin_priority
- school_commuter_priority
- family_daily_goods_priority
- emergency_supply_priority


# ============================================================
# 2. FINAL RULE
# ============================================================

Shelf policy
must influence auto operation outcomes.
