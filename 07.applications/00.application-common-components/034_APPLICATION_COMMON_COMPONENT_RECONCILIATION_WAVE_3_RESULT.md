# ============================================================
# APPLICATION COMMON COMPONENT RECONCILIATION WAVE 3 RESULT
# ============================================================

status: canonical-result
layer: application-common-components
domain: reconciliation-wave-result
wave: 3
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This file records the reconciled output
of reconciliation wave 3.

This is still pre-fixed-promotion.
It defines merged family names,
absorbed names,
retained child subfamilies,
and the candidate subsets
that may later move into wave 3b fixed-promotion planning.

# ============================================================
# 1. RECONCILED FAMILY RESULTS
# ============================================================

reconciled_families:

  - reconciled_family_name: Approval / Review Visibility Common
    owner_side: BusinessOS common
    merged_from:
      - Submit / Approval State Badge System
      - Approval Action Surface
      - Approval Stepper / Review Progress
      - Review Comment Thread Viewer
      - Proposal Status Workflow UI
      - Approval Status / Decision Surface
    family_scope:
      - stage visibility
      - approval action surface
      - review progression
      - review-thread continuity
      - decision display
      - workflow progression semantics
      - return / reject / approve visibility
    absorbed_names:
      - Submit / Approval State Badge System
      - Approval Status / Decision Surface
    retained_subfamilies:
      - Approval Action Surface
      - Approval Stepper / Review Progress
      - Review Comment Thread Viewer
      - Proposal Status Workflow UI
    fixed_promotion_subset_candidate:
      - Approval / Review Visibility Common
    note:
      Status/decision display is unified at the parent level,
      while actions, stepper, thread, and proposal workflow remain reusable child families.

  - reconciled_family_name: Evidence / Attachment / Reference Common
    owner_side: BusinessOS common
    merged_from:
      - Evidence / Attachment Intake Module
      - Evidence Attachment Panel
      - Evidence Reference Picker
      - Evidence Integrity Metadata Layer
      - OCR-Ready Intake Boundary
    family_scope:
      - evidence intake
      - attachment intake
      - evidence panel
      - evidence reference linking
      - integrity metadata
      - OCR-ready intake boundary
      - review-oriented evidence handling
    absorbed_names:
      - Evidence / Attachment Intake Module
      - Evidence Attachment Panel
    retained_subfamilies:
      - Evidence Reference Picker
      - Evidence Integrity Metadata Layer
      - OCR-Ready Intake Boundary
    fixed_promotion_subset_candidate:
      - Evidence / Attachment / Reference Common
    note:
      Intake/panel meaning is unified at the parent level,
      while picker/metadata/OCR remain child technical subfamilies.

  - reconciled_family_name: Timeline / Audit / History Common
    owner_side: Application common
    merged_from:
      - Timeline / History Entry Common
      - Audit Log Surface Common
      - Timeline / State Transition Viewer
      - History Timeline Component
      - Audit Event Surface
    family_scope:
      - chronology row
      - state transition visibility
      - who-did-what audit
      - before/after change tracking
      - inquiry-oriented history viewing
      - audit/event chronology linkage
    absorbed_names:
      - Timeline / History Entry Common
      - History Timeline Component
    retained_subfamilies:
      - Audit Log Surface Common
      - Timeline / State Transition Viewer
      - Audit Event Surface
    fixed_promotion_subset_candidate:
      - Timeline / Audit / History Common
    note:
      Neutral history/timeline display is unified at the parent level,
      while audit and state-transition detail remain reusable child families.

  - reconciled_family_name: Analytics / Comparison / KPI Common
    owner_side: Application common
    merged_from:
      - KPI Summary Card Set
      - KPI Chart Surface
      - Score Card / Score Breakdown View
      - Comparison Board Component
      - Gap Analysis Table Viewer
      - Skill / Capability Radar Chart
      - Skill Matrix Grid
      - Period Switch / Comparison Selector
      - Forecast Metadata Panel
    family_scope:
      - KPI summary
      - chart/trend view
      - score breakdown
      - comparison board
      - gap view
      - matrix visualization
      - radar visualization
      - period comparison
      - analysis metadata
    absorbed_names:
      - KPI Summary Card Set
      - Score Card / Score Breakdown View
    retained_subfamilies:
      - KPI Chart Surface
      - Comparison Board Component
      - Gap Analysis Table Viewer
      - Skill / Capability Radar Chart
      - Skill Matrix Grid
      - Period Switch / Comparison Selector
      - Forecast Metadata Panel
    fixed_promotion_subset_candidate:
      - Analytics / Comparison / KPI Common
    note:
      KPI/score/comparison meaning is unified at the parent level,
      while charts, tables, matrix/radar, selector, and metadata remain child families.

# ============================================================
# 2. WAVE 3 ABSORPTION SUMMARY
# ============================================================

absorption_summary:
- Submit / Approval State Badge System -> Approval / Review Visibility Common
- Approval Status / Decision Surface -> Approval / Review Visibility Common
- Evidence / Attachment Intake Module -> Evidence / Attachment / Reference Common
- Evidence Attachment Panel -> Evidence / Attachment / Reference Common
- Timeline / History Entry Common -> Timeline / Audit / History Common
- History Timeline Component -> Timeline / Audit / History Common
- KPI Summary Card Set -> Analytics / Comparison / KPI Common
- Score Card / Score Breakdown View -> Analytics / Comparison / KPI Common

retained_as_subfamilies:
- Approval Action Surface
- Approval Stepper / Review Progress
- Review Comment Thread Viewer
- Proposal Status Workflow UI
- Evidence Reference Picker
- Evidence Integrity Metadata Layer
- OCR-Ready Intake Boundary
- Audit Log Surface Common
- Timeline / State Transition Viewer
- Audit Event Surface
- KPI Chart Surface
- Comparison Board Component
- Gap Analysis Table Viewer
- Skill / Capability Radar Chart
- Skill Matrix Grid
- Period Switch / Comparison Selector
- Forecast Metadata Panel

# ============================================================
# 3. WAVE 3B FIXED-PROMOTION SUBSET CANDIDATES
# ============================================================

wave_3b_fixed_promotion_subset_candidates:
- Approval / Review Visibility Common
- Evidence / Attachment / Reference Common
- Timeline / Audit / History Common
- Analytics / Comparison / KPI Common

wave_3b_interpretation:
These four reconciled family names
are now the reduced subset
for the next fixed-promotion planning step.

# ============================================================
# 4. DECISION RULES AFTER WAVE 3
# ============================================================

post_wave_3_rules:
- do not promote absorbed child/earlier names independently
- keep approval/review actions and threads as child families under the parent visibility family
- keep evidence metadata and OCR-specific boundaries as child technical subfamilies
- keep audit/state-transition detail as child subfamilies under the parent history family
- keep charts, comparison boards, matrix/radar, and metadata as child subfamilies under the analytics parent family

# ============================================================
# 5. FINAL JUDGMENT
# ============================================================

final_judgment:
Reconciliation wave 3 is complete.
The workspace should now move to wave 3b:
fixed-promotion subset selection.

# ============================================================
