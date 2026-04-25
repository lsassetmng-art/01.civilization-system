# ============================================================
# BUSINESS PERSONA EVENT TO PROJECTION FIELD MAPPING SUMMARY
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Provide a concise mapping summary from Business-origin event fields to downstream projection concerns.

mapping_summary:
- purchase_complete
  - source fields:
    - order_id
    - product_id
    - sku_id
    - commercial_effective_at
    - grant_target_type
    - grant_target_id
  - downstream projection targets:
    - apply-ready eligibility bootstrap
    - initial persona-usable commercial availability state
- grant
  - source fields:
    - entitlement_id
    - effective_at
    - expires_at when applicable
    - source_order_id or source_subscription_id
  - downstream projection targets:
    - usable entitlement mirror
    - apply-ready entitlement state
- revoke
  - source fields:
    - entitlement_id
    - effective_at
    - revoke_reason_code
  - downstream projection targets:
    - disable usable entitlement mirror
    - disable apply-ready state
- subscription_change
  - source fields:
    - subscription_id
    - prior_state
    - new_state
    - plan_id
    - effective_at
  - downstream projection targets:
    - subscription-derived apply availability
    - local projection refresh trigger

mapping_rule:
- mapping is downstream-only
- mapping must not invent missing commercial truth
- Business truth remains the source of correction

result:
- Event to projection field mapping summary fixed as a canonical meta record.
