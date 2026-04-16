# ============================================================
# APPLICATION COMMON COMPONENT RECONCILIATION WAVE 2 RESULT
# ============================================================

status: canonical-result
layer: application-common-components
domain: reconciliation-wave-result
wave: 2
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This file records the reconciled output
of reconciliation wave 2.

This is still pre-fixed-promotion.
It defines merged family names,
absorbed names,
retained child subfamilies,
and the candidate subsets
that may later move into wave 2b fixed-promotion planning.

# ============================================================
# 1. RECONCILED FAMILY RESULTS
# ============================================================

reconciled_families:

  - reconciled_family_name: Goal / Timeline / Milestone Review Common
    owner_side: Application common
    merged_from:
      - Goal / Timeline / Milestone Review Common
      - Timeline / History Entry Common
      - Review Session Shell
      - KPI Summary Card Set
      - ProjectFlow planning/review fragments
      - LifeOS planning/review fragments
    family_scope:
      - goal object
      - milestone object
      - timeline view contract
      - periodic review cycle
      - progress / delay / completion check
      - milestone-linked next action
      - review checkpoint visibility
    absorbed_names:
      - none
    retained_subfamilies:
      - Timeline / History Entry Common
      - Review Session Shell
      - KPI Summary Card Set
    fixed_promotion_subset_candidate:
      - Goal / Timeline / Milestone Review Common
    note:
      Timeline and review remain child reusable families,
      while goal/milestone/review becomes the broader parent family.

  - reconciled_family_name: Consultation Prep / Fact Timeline / Checklist Common
    owner_side: Application common
    merged_from:
      - Consultation Prep / Fact Timeline / Checklist Common
      - Timeline / History Entry Common
      - Validation Result Summary Panel
      - consultation-prep fragments from legal / inheritance / end-of-life domains
      - shareable summary prep fragments
    family_scope:
      - fact timeline
      - issue / question list
      - required document checklist
      - next consultation memo
      - shareable summary skeleton
      - prep-state validation
    absorbed_names:
      - none
    retained_subfamilies:
      - Validation Result Summary Panel
      - Timeline / History Entry Common
    fixed_promotion_subset_candidate:
      - Consultation Prep / Fact Timeline / Checklist Common
    note:
      This remains preparation support only,
      not judgment logic itself.

  - reconciled_family_name: Family Shared Record / Consent Common
    owner_side: LifeOS / BusinessOS boundary family
    merged_from:
      - Family Shared Record / Consent Common
      - Explicit Share Scope / Delegated Access Common
      - Share Scope Indicator
      - LifeOS family-share fragments
      - consent / emergency disclosure fragments
    family_scope:
      - family viewer/editor scope
      - consent-based sharing
      - emergency limited disclosure
      - revocation rule
      - delegated family access
      - family-scoped visibility boundary
    absorbed_names:
      - none
    retained_subfamilies:
      - Explicit Share Scope / Delegated Access Common
    fixed_promotion_subset_candidate:
      - Family Shared Record / Consent Common
    note:
      Generic share/delegation remains the broader cross-app family,
      while this becomes the family/consent-specialized branch.

  - reconciled_family_name: Document Bundle / Summary Pack Common
    owner_side: BusinessOS common
    merged_from:
      - Document Bundle / Summary Pack Common
      - Document PDF Generation Core
      - Evidence / Attachment Intake Module
      - Export Center Pattern
      - submission/export/document bundle fragments
      - consultation/share pack fragments
    family_scope:
      - attachment bundle
      - summary pack
      - submission prep pack
      - pre-share validation
      - export-ready package metadata
      - bundle composition boundary
    absorbed_names:
      - none
    retained_subfamilies:
      - Document PDF Generation Core
      - Evidence / Attachment Intake Module
    fixed_promotion_subset_candidate:
      - Document Bundle / Summary Pack Common
    note:
      Bundle/pack meaning becomes the parent family above document output and attachment intake.

# ============================================================
# 2. WAVE 2 ABSORPTION SUMMARY
# ============================================================

absorption_summary:
- no previously fixed or limited-fixed names are fully absorbed in wave 2
- wave 2 mainly establishes broader parent families above retained child families

retained_as_subfamilies:
- Timeline / History Entry Common
- Review Session Shell
- KPI Summary Card Set
- Validation Result Summary Panel
- Explicit Share Scope / Delegated Access Common
- Document PDF Generation Core
- Evidence / Attachment Intake Module

# ============================================================
# 3. WAVE 2B FIXED-PROMOTION SUBSET CANDIDATES
# ============================================================

wave_2b_fixed_promotion_subset_candidates:
- Goal / Timeline / Milestone Review Common
- Consultation Prep / Fact Timeline / Checklist Common
- Family Shared Record / Consent Common
- Document Bundle / Summary Pack Common

wave_2b_interpretation:
These four reconciled family names
are now the reduced subset
for the next fixed-promotion planning step.

# ============================================================
# 4. DECISION RULES AFTER WAVE 2
# ============================================================

post_wave_2_rules:
- do not promote child families instead of parent families when the parent is the real reusable skeleton
- keep consultation support separate from legal/medical judgment logic
- keep family consent/share separate from generic delegated access where family/emergency scope matters
- keep bundle/pack meaning above document-output and attachment-intake subfamilies

# ============================================================
# 5. FINAL JUDGMENT
# ============================================================

final_judgment:
Reconciliation wave 2 is complete.
The workspace should now move to wave 2b:
fixed-promotion subset selection.

# ============================================================
