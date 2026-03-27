# ============================================================
# CIVILIZATION RETAIL DIGITAL PRODUCT RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for retail digital products
inside CivilizationOS.


# ============================================================
# 1. RUNTIME ROLE
# ============================================================

The runtime must evaluate:
- product category validity
- origin OS linkage validity
- entitlement validity
- license compatibility
- integration-mode validity
- delegated policy target validity


# ============================================================
# 2. PRODUCT EVALUATION
# ============================================================

Runtime must verify:
- product_type is allowed
- origin_os is valid
- source_ref is valid where required
- publish/moderation state is active
- entitlement rules are satisfied

Fail closed on unresolved product interpretation.


# ============================================================
# 3. BUSINESSOS-LINKED APP EVALUATION
# ============================================================

For BusinessOS-linked apps,
runtime must verify:
- the product is classified correctly
- integration_mode is valid
- BusinessOS linkage metadata is valid
- entitlement permits access to the app product

Detailed data/runtime access decisions
must be delegated to BusinessOS policy/runtime.


# ============================================================
# 4. FINAL RUNTIME RULE
# ============================================================

Retail digital product runtime in CivilizationOS must be:
- product-aware
- entitlement-aware
- integration-aware
- delegation-aware
- fail-closed on unresolved interpretation
