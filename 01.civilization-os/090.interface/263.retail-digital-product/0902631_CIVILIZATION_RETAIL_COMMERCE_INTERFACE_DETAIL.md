# ============================================================
# CIVILIZATION RETAIL COMMERCE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for retail commerce
inside CivilizationOS.


# ============================================================
# 1. DISTRIBUTION RIGHT INTERFACE
# ============================================================

required_fields:
- retail_digital_product_ref
- seller_profile_ref
- distribution_mode
- correlation_id


# ============================================================
# 2. LISTING INTERFACE
# ============================================================

required_fields:
- seller_profile_ref
- retail_digital_product_ref
- distribution_right_ref
- storefront_title
- listing_action
- correlation_id

listing_action examples:
- create_draft
- submit
- approve
- publish
- hide
- suspend
- archive


# ============================================================
# 3. PURCHASE / ENTITLEMENT INTERFACE
# ============================================================

required_fields:
- buyer_type
- buyer_ref
- listing_ref or bundle_ref
- purchase_action
- correlation_id

purchase_action examples:
- start_purchase
- complete_payment
- finalize_purchase
- grant_entitlement


# ============================================================
# 4. REVENUE ALLOCATION INTERFACE
# ============================================================

required_fields:
- purchase_ref
- allocation_action
- correlation_id

allocation_action examples:
- calculate_allocation
- allocate_seller_share
- allocate_rightsholder_share
- allocate_agency_fee
- settle_seller


# ============================================================
# 5. OUTPUT RULE
# ============================================================

All outputs must distinguish:
- allowed
- allowed_with_conditions
- denied
- blocked_by_policy
- unresolved_policy

This distinction is mandatory.


# ============================================================
# 6. FINAL INTERFACE RULE
# ============================================================

Retail commerce interfaces in CivilizationOS must be:
- seller-aware
- rightsholder-aware
- distribution-aware
- entitlement-aware
- revenue-aware
