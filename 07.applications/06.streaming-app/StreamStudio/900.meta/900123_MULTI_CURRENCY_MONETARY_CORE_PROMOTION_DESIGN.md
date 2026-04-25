# ============================================================
# MULTI-CURRENCY MONETARY CORE PROMOTION DESIGN
# ============================================================

status: promotion-design
layer: meta
system: applications
application_origin: StreamStudio
component_name: Multi-Currency Monetary Core
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines the promotion design
for Multi-Currency Monetary Core.

The purpose of this common component is to provide
a reusable monetary-rule contract and display-safe money handling core
for commerce-enabled applications, settlement-preparation surfaces,
pricing editors, and revenue-sharing applications.

This component should not remain permanently StreamStudio-local
because currency-safe money handling is a foundational cross-app concern.

---

## 2. Canonical Responsibility

Multi-Currency Monetary Core is responsible for:

- currency-aware money structure definition
- base currency and display currency separation
- amount precision handling
- rounding rule handling
- monetary state normalization
- historical amount labeling support
- conversion-context display support
- currency-safe summary contract exposure

It is not responsible for:

- payment execution
- settlement execution
- exchange-rate provider implementation
- tax calculation engine logic
- accounting close logic
- app-specific pricing strategy
- backend financial ledger implementation

---

## 3. Reuse Scope

reuse_scope:
- commerce-enabled applications
- payout-preparation applications
- revenue-sharing applications
- pricing editor applications
- marketplace-connected applications
- reporting and summary surfaces that expose money values

likely_future_consumers:
- StreamStudio
- StaticArtOS commerce flows
- marketplace listing tools
- membership management tools
- payout-preparation tools
- future creator monetization applications

---

## 4. Core Responsibilities

- define money value with explicit currency identity
- distinguish base currency from display currency
- distinguish stored amount from displayed converted amount
- support precision and rounding policy exposure
- support monetary summary normalization
- expose historical amount labeling where needed
- support app-consumable conversion context
- support additive currency-rule extensions without rewriting the base contract

---

## 5. Required Input Contract

required_inputs:
- money_context_id
- base_amount
- base_currency_code
- display_currency_code_or_null
- precision_policy
- rounding_policy
- historical_amount_label_or_null
- conversion_reference_or_null
- monetary_profile

input_notes:
- base_amount and base_currency_code are mandatory
- display_currency_code_or_null may equal base currency or may be omitted
- conversion_reference_or_null should be explicit when display conversion is shown
- monetary_profile allows app-specific rule combinations while preserving the common contract

---

## 6. Output / Event Contract

emitted_events:
- monetary_value_render_requested
- display_currency_changed
- rounding_policy_applied
- historical_amount_label_rendered
- conversion_context_rendered
- invalid_monetary_input_detected
- monetary_state_normalized

output_notes:
- this core is mostly contract and normalization oriented,
  but emitted events remain useful for consumer orchestration
- invalid monetary input should remain explicit
- conversion context should remain explicit when a displayed converted amount is shown

---

## 7. State Model

normalized_state_model:
- monetary_pristine
- monetary_normalized
- monetary_display_ready
- monetary_conversion_applied
- monetary_invalid
- monetary_rounding_applied

state_model_notes:
- monetary_display_ready does not imply payment-ready
- monetary_conversion_applied is distinct from monetary_normalized
- monetary_invalid must remain explicit
- historical labeling may exist without active conversion

---

## 8. Permission Assumptions

permission_assumptions:
- caller must already be allowed to view or edit monetary fields as applicable
- monetary display permission is not equivalent to settlement execution permission
- monetary edit permission is not equivalent to accounting close authority
- this component assumes financial visibility is already authorized by the consumer app

permission_boundary_note:
This component assumes a validated permission context,
but it should not become the canonical global permission engine.

---

## 9. Monetary Boundary

minimum_monetary_concepts:
- base_amount
- base_currency_code
- display_currency_code_or_null
- precision_policy
- rounding_policy
- normalized_display_value
- historical_amount_label_or_null
- conversion_reference_or_null

optional_monetary_concepts_by_profile:
- display-only approximate marker
- rate timestamp label
- source-vs-display currency badge
- legacy amount badge
- estimated amount badge

monetary_boundary_note:
Optional concepts may vary by app profile,
but the common contract should remain monetary-core oriented
instead of app-screen oriented.

---

## 10. UI / Behavior Boundary

allowed_common_surface_behavior:
- monetary summary strip
- base/display currency label rendering
- rounded value rendering
- historical label rendering
- conversion context rendering
- invalid-state exposure

must_not_be_baked_in:
- StreamStudio-specific pricing wording
- payment checkout behavior
- exchange-rate provider implementation detail
- accounting engine detail
- tax engine detail
- app-specific pricing strategy text

---

## 11. Failure / Recovery Design Notes

failure_and_recovery_notes:
- invalid currency input must remain explicit
- display conversion absence must not corrupt base amount display
- rounding application should remain reviewable
- historical amount labels should remain stable even when display currency changes
- approximate display should remain distinguishable from exact base amount

---

## 12. Relationship to Other Common Candidates

related_common_candidates:
- Marketplace Listing Editor Common
- Membership Program Manager Common
- Revenue Split Editor Common
- Fixed Fee and Percentage Allocation Common

relationship_notes:
- Marketplace Listing Editor Common uses this core for listing-facing monetary structure
- Membership Program Manager Common may use this core for tier-facing money representation
- Revenue Split Editor Common may use this core for projected or summary monetary values
- Fixed Fee and Percentage Allocation Common uses this core for fixed-fee currency-safe handling

---

## 13. Promotion Caution

promotion_caution:
- do not merge monetary core with payment execution
- do not merge monetary core with settlement execution
- do not hard-code one exchange-rate source
- do not embed app-specific pricing strategy in the common contract
- do not treat display conversion as source-of-truth overwrite

---

## 14. Initial Promotion Judgment

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
- recommended_next_relation_review:
  - Marketplace Listing Editor Common
  - Membership Program Manager Common
  - Revenue Split Editor Common
  - Fixed Fee and Percentage Allocation Common

---

## 15. Final Note

This design defines Multi-Currency Monetary Core
as a reusable contract-first common component candidate.

It is ready to be treated
as an official promotion-design unit
for later shared-component adoption review.
