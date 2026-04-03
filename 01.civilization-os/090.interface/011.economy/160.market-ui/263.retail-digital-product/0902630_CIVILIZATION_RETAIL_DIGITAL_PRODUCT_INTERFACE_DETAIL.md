# ============================================================
# CIVILIZATION RETAIL DIGITAL PRODUCT INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for retail digital products
inside CivilizationOS.


# ============================================================
# 1. PRODUCT LISTING INTERFACE
# ============================================================

required_fields:
- seller_company_ref
- product_type
- origin_os
- source_ref where applicable
- runtime_type
- integration_mode
- entitlement_type
- correlation_id


# ============================================================
# 2. ENTITLEMENT INTERFACE
# ============================================================

required_fields:
- retail_digital_product_ref
- holder_type
- holder_ref
- entitlement_scope
- correlation_id


# ============================================================
# 3. INTEGRATION PROFILE INTERFACE
# ============================================================

required_fields:
- retail_digital_product_ref
- integration_mode
- delegated_policy_os
- required_runtime_summary
- correlation_id


# ============================================================
# 4. OUTPUT RULE
# ============================================================

All outputs must distinguish:
- allowed
- denied
- blocked_by_policy
- unresolved_policy

This distinction is mandatory.


# ============================================================
# 5. FINAL INTERFACE RULE
# ============================================================

Retail digital product interfaces in CivilizationOS must be:
- product-aware
- entitlement-aware
- integration-aware
- delegation-aware
