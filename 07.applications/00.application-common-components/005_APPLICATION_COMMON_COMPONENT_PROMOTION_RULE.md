# ============================================================
# APPLICATION COMMON COMPONENT PROMOTION RULE
# ============================================================

status: canonical
layer: application-common-components
domain: promotion-rule
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This document defines how additive common-component candidates
are evaluated, classified, and promoted into the fixed
application common-component set.

This rule exists to:
- keep the fixed common set stable
- avoid premature promotion
- prevent duplicate commonization
- preserve clear owner-side boundaries
- make promotion work repeatable

# ============================================================
# 1. PRIMARY CLASSIFICATION
# ============================================================

Every newly discovered reusable component candidate
must first be classified into one of the following:

classification_result:
- promote_to_fixed
- absorb_into_existing
- keep_as_additive_candidate
- classify_as_os_internal_common
- mapping_only
- keep_app_specific

meaning:

promote_to_fixed:
The candidate is mature enough to enter the canonical fixed set now.

absorb_into_existing:
The candidate should not become an independent common component.
It should extend an already existing fixed component.

keep_as_additive_candidate:
The candidate is useful, but abstraction quality or reuse confidence
is not stable enough yet.

classify_as_os_internal_common:
The candidate is reusable within one OS,
but should not yet be promoted to cross-application fixed common.

mapping_only:
The candidate mostly overlaps with existing fixed common components,
so it should first be represented as a mapping to current canon.

keep_app_specific:
The candidate is still too tied to one app's screen, wording,
or local workflow and should not enter the common-component set.

# ============================================================
# 2. OWNER-SIDE RULE
# ============================================================

owner_side_options:
- PersonaOS common
- BusinessOS common
- Application common
- OS-internal common

owner_side_meaning:

PersonaOS common:
- persona meaning
- wording resolution
- presence / expression semantics
- companion / secretary-facing semantics

BusinessOS common:
- business governance
- routing
- sync
- approval / review
- worker operations
- delivery
- controlled execution
- business-side contracts

Application common:
- cross-app launch
- gateway / launcher semantics
- upper-layer entry semantics
- host-layer shared patterns
- cross-application front-surface contracts

OS-internal common:
- reusable only within one OS
- not yet justified for cross-application canonical promotion

# ============================================================
# 3. PROMOTION TEST
# ============================================================

A candidate should be promoted to fixed only when:

promotion_test:
- reuse targets are visible beyond one app or one temporary design
- responsibility boundary is clear
- owner side is clear
- overlap with existing fixed common is acceptable or resolved
- app-specific residual responsibility can be explained clearly
- the candidate expresses meaning, capability, contract, or control
  rather than only one UI layout
- the abstraction is stable enough to survive another app using it

If any of the following is still unclear,
promotion should usually be delayed:

promotion_risk:
- owner side is unclear
- app-specific UI and common semantics are mixed
- the same concept already exists under a different name
- reuse is still hypothetical only
- abstraction is still too source-app-shaped

# ============================================================
# 4. ABSORPTION RULE
# ============================================================

A candidate should be absorbed into an existing fixed component when:

absorption_test:
- it mainly extends an already existing common capability
- creating a new component would duplicate the canon
- the difference is implementation depth, not semantic independence
- the candidate behaves as a sub-layer or extension of a stable component

examples:
- Card Capture Support Common
  -> Attachment / Evidence Common extension
- Template Application Common
  -> Template / Generated Output Common extension
- Publication Request + Result Surface Common
  -> ERP Publication Capability surface extension
- Draft Request Surface Common
  -> Draft / Work-in-progress Common front-surface extension

# ============================================================
# 5. OS-INTERNAL RULE
# ============================================================

A candidate should remain OS-internal when:

os_internal_test:
- it is reused strongly inside one OS
- it reflects that OS's own structural meaning
- cross-application abstraction is not yet justified
- promotion outside that OS would weaken clarity

example:
- LifeOS internal reusable structures such as
  Check-in Common, Review Summary Common,
  Timeline Life Log Common, Sensitivity Common

These may later be promoted,
but they are not automatically application-common.

# ============================================================
# 6. MAPPING-ONLY RULE
# ============================================================

A candidate should be mapping-only when:

mapping_only_test:
- an existing fixed component already covers most of it
- new naming would add noise
- the candidate is better handled by showing correspondence
  to current canon first

example:
- CivilizationOS overlap lists that mostly map onto
  Submission Common, Draft / Work-in-progress Common,
  Approval / Review Surface Common, and similar existing fixed components

# ============================================================
# 7. APP-SPECIFIC RULE
# ============================================================

A candidate should remain app-specific when it is mostly:

app_specific_signs:
- page composition
- button placement
- screen-level density
- app-local wording
- feature-local view arrangement
- one-app-only navigation choice
- one-app-only review flow detail

rule:
Common components own meaning and reusable capability.
Apps own presentation and flow.

# ============================================================
# 8. PROMOTION FLOW
# ============================================================

standard_flow:
1. discover reusable candidate
2. record candidate in additive ledger
3. classify by owner side
4. run promotion / absorption / internal / mapping tests
5. decide one classification result
6. if promoted, reflect into:
   - 00_APPLICATION_COMMON_COMPONENTS_INTEGRATED.md
   - 001_APPLICATION_COMMON_COMPONENT_LEDGER.md
   - 002_APPLICATION_COMMON_COMPONENT_REFERENCE_MATRIX.md
7. if not promoted, keep clear note in additive ledger

# ============================================================
# 9. REQUIRED OUTPUT WHEN EVALUATING A CANDIDATE
# ============================================================

Each evaluated candidate should ideally end with:

required_summary:
- classification_result
- owner_side
- reason
- overlap_with_existing
- residual_app_or_os_specific_scope
- next_action

example_format:
- classification_result: promote_to_fixed
- owner_side: BusinessOS common
- reason: reuse already visible across multiple apps
- overlap_with_existing: low
- residual_app_or_os_specific_scope: screen layout remains local
- next_action: reflect into integrated / ledger / matrix

# ============================================================
# 10. STABILITY PRINCIPLE
# ============================================================

stability_principle:
The fixed common set should grow carefully.
It is better to delay promotion than to create noisy,
duplicated, unstable common components.

The additive ledger exists so discovery can continue
without destabilizing the fixed canonical set.

# ============================================================
# 11. CONCLUSION
# ============================================================

This rule fixes the promotion method for application common components.

In short:
- discover first
- classify clearly
- promote carefully
- absorb when duplication is likely
- keep OS-specific reuse inside the OS when needed
- keep app-specific presentation outside the common set

# ============================================================
