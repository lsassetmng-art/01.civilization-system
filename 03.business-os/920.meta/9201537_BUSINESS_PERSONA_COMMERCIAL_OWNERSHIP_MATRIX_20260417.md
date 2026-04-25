# ============================================================
# BUSINESS PERSONA COMMERCIAL OWNERSHIP MATRIX
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix exact ownership boundaries for BusinessOS and PersonaOS in persona-related commerce.

ownership_matrix:
- product_commercial_definition
  - canonical_owner: BusinessOS
  - persona_role: mirror or apply-facing read only
- product_sku_commercial_definition
  - canonical_owner: BusinessOS
  - persona_role: mirror or apply-facing read only
- order_truth
  - canonical_owner: BusinessOS
  - persona_role: downstream visibility only
- subscription_truth
  - canonical_owner: BusinessOS
  - persona_role: mirror or apply-ready view only
- billing_truth
  - canonical_owner: BusinessOS
  - persona_role: none as final authority
- contract_truth
  - canonical_owner: BusinessOS
  - persona_role: none as final authority
- entitlement_commercial_truth
  - canonical_owner: BusinessOS
  - persona_role: apply-ready mirror only
- persona_apply_eligibility
  - canonical_owner: PersonaOS downstream state
  - business_role: truth source for eligibility-driving commercial conditions
- persona_internal_usage_state
  - canonical_owner: PersonaOS
  - business_role: not the owner of local persona runtime usage state
- erp_facing_commercial_export
  - canonical_owner: BusinessOS
  - persona_role: not authoritative

result:
- Business Persona commercial ownership matrix fixed as a canonical meta record.
