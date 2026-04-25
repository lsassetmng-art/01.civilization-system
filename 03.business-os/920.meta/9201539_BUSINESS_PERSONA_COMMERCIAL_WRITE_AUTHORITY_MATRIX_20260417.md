# ============================================================
# BUSINESS PERSONA COMMERCIAL WRITE AUTHORITY MATRIX
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix where authoritative writes are allowed for persona-related commerce.

authoritative_write_matrix:
- create_product_commercial_record
  - allowed_writer: BusinessOS
- update_product_commercial_record
  - allowed_writer: BusinessOS
- create_order
  - allowed_writer: BusinessOS
- finalize_purchase
  - allowed_writer: BusinessOS
- create_subscription
  - allowed_writer: BusinessOS
- change_subscription_state
  - allowed_writer: BusinessOS
- grant_commercial_entitlement
  - allowed_writer: BusinessOS
- revoke_commercial_entitlement
  - allowed_writer: BusinessOS
- emit_erp_facing_commercial_record
  - allowed_writer: BusinessOS
- create_apply_ready_entitlement_state
  - allowed_writer: PersonaOS as downstream consequence only
- update_persona_apply_eligibility
  - allowed_writer: PersonaOS as downstream consequence only
- update_persona_internal_usage_state
  - allowed_writer: PersonaOS

forbidden_persona_authority:
- PersonaOS must not be the final writer for order truth, subscription truth, billing truth,
  contract truth, revenue truth, or entitlement commercial truth.

result:
- Business Persona commercial write authority matrix fixed as a canonical meta record.
