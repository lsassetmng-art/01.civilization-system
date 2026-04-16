# ============================================================
# APPLICATION COMMON COMPONENT RECONCILIATION WAVE 3 PLAN
# ============================================================

status: canonical-plan
layer: application-common-components
domain: reconciliation-wave-plan
wave: 3
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This file defines reconciliation wave 3
for the next major adopted-but-not-fully-reconciled cluster
after the stabilized post-wave-2b state.

This is not fixed promotion yet.
This is reconciliation planning first.

# ============================================================
# 1. WAVE 3 TARGETS
# ============================================================

wave_3_targets:
- Approval / Review Visibility Common
- Evidence / Attachment / Reference Common
- Timeline / Audit / History Common
- Analytics / Comparison / KPI Common

# ============================================================
# 2. RECONCILIATION MAP
# ============================================================

reconciliation_map:

  - candidate_name: Approval / Review Visibility Common
    likely_merge_with:
      - Submit / Approval State Badge System
      - Approval Action Surface
      - Approval Stepper / Review Progress
      - Review Comment Thread Viewer
      - Proposal Status Workflow UI
      - Approval Status / Decision Surface
    intended_family_direction:
      - approval-review-visibility family
    merge_goal:
      Establish one reusable family for
      stage visibility,
      action surface,
      review-thread continuity,
      decision display,
      and workflow progression semantics.
    fixed_promotion_ready_now:
      no
    reason_not_ready:
      overlap spans badges, actions, stepper, decision surface, and thread continuity

  - candidate_name: Evidence / Attachment / Reference Common
    likely_merge_with:
      - Evidence / Attachment Intake Module
      - Evidence Attachment Panel
      - Evidence Reference Picker
      - Evidence Integrity Metadata Layer
      - OCR-Ready Intake Boundary
    intended_family_direction:
      - evidence-attachment-reference family
    merge_goal:
      Establish one reusable family for
      intake,
      evidence panel,
      reference linking,
      integrity metadata,
      and review-oriented evidence handling.
    fixed_promotion_ready_now:
      no
    reason_not_ready:
      overlap spans intake, metadata, review panel, and reference picker layers

  - candidate_name: Timeline / Audit / History Common
    likely_merge_with:
      - Timeline / History Entry Common
      - Audit Log Surface Common
      - Timeline / State Transition Viewer
      - History Timeline Component
      - Audit Event Surface
    intended_family_direction:
      - timeline-audit-history family
    merge_goal:
      Establish one reusable family for
      chronology row,
      state transition visibility,
      who-did-what audit,
      before/after change tracking,
      and inquiry-oriented history viewing.
    fixed_promotion_ready_now:
      no
    reason_not_ready:
      overlap spans neutral timeline, audit surface, and domain history detail

  - candidate_name: Analytics / Comparison / KPI Common
    likely_merge_with:
      - KPI Summary Card Set
      - KPI Chart Surface
      - Score Card / Score Breakdown View
      - Comparison Board Component
      - Gap Analysis Table Viewer
      - Skill / Capability Radar Chart
      - Skill Matrix Grid
      - Period Switch / Comparison Selector
      - Forecast Metadata Panel
    intended_family_direction:
      - analytics-comparison-kpi family
    merge_goal:
      Establish one reusable family for
      KPI summary,
      chart/trend view,
      score breakdown,
      comparison board,
      gap view,
      matrix/radar visualization,
      period comparison,
      and analysis metadata.
    fixed_promotion_ready_now:
      no
    reason_not_ready:
      overlap spans KPI, score, chart, comparison, matrix, and metadata layers

# ============================================================
# 3. WAVE 3 OUTPUT GOAL
# ============================================================

wave_3_output_goal:
- choose reconciled family names
- identify absorbed names
- identify retained child subfamilies
- prepare a reduced wave_3b fixed-promotion subset candidate set

# ============================================================
# 4. WAVE 3 DECISION RULES
# ============================================================

decision_rules:
- prefer parent meaning families over screen-local fragments
- preserve action surfaces and viewer surfaces as child families when needed
- keep audit/history distinct enough for inquiry and governance use
- keep analytics meaning above specific chart/table widgets
- do not promote before overlap is resolved

# ============================================================
# 5. RECOMMENDED NEXT ACTION
# ============================================================

recommended_next_action:
For each wave 3 target:
1. choose one reconciled family name
2. list absorbed existing names
3. define owner side
4. define retained child subfamilies
5. define wave_3b fixed-promotion candidate subset

# ============================================================
# 6. FINAL JUDGMENT
# ============================================================

final_judgment:
Wave 3 should be handled as reconciliation first,
not direct promotion.

# ============================================================
