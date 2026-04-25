# ============================================================
# APPLICATION COMMON COMPONENT RECONCILIATION WAVE 2 PLAN
# ============================================================

status: canonical-plan
layer: application-common-components
domain: reconciliation-wave-plan
wave: 2
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This file defines reconciliation wave 2
for the next strengthening cluster
after the stabilized post-wave-1b state.

This is not fixed promotion yet.
This is reconciliation planning first.

# ============================================================
# 1. WAVE 2 TARGETS
# ============================================================

wave_2_targets:
- Goal / Timeline / Milestone Review Common
- Consultation Prep / Fact Timeline / Checklist Common
- Family Shared Record / Consent Common
- Document Bundle / Summary Pack Common

# ============================================================
# 2. RECONCILIATION MAP
# ============================================================

reconciliation_map:

  - candidate_name: Goal / Timeline / Milestone Review Common
    likely_merge_with:
      - Timeline / History Entry Common
      - Review Session Shell
      - KPI Summary Card Set
      - ProjectFlow planning/review families
      - LifeOS planning/review families
    intended_family_direction:
      - goal-timeline-milestone-review family
    merge_goal:
      Establish one reusable family for
      goal object,
      milestone object,
      timeline view contract,
      periodic review cycle,
      progress / delay / completion check,
      and milestone-linked next action.
    fixed_promotion_ready_now:
      no
    reason_not_ready:
      overlap spans planning, review, timeline, and progress families

  - candidate_name: Consultation Prep / Fact Timeline / Checklist Common
    likely_merge_with:
      - Timeline / History Entry Common
      - Validation Result Summary Panel
      - Document Bundle / Summary Pack candidate
      - Legal / Inheritance / EndOfLife consultation-prep fragments
    intended_family_direction:
      - consultation-prep-fact-timeline-checklist family
    merge_goal:
      Establish one reusable preparation family for
      fact timeline,
      issue/question list,
      required document checklist,
      next consultation memo,
      and shareable summary pack skeleton.
    fixed_promotion_ready_now:
      no
    reason_not_ready:
      overlap spans checklist, timeline, summary, and prep-pack families

  - candidate_name: Family Shared Record / Consent Common
    likely_merge_with:
      - Explicit Share Scope / Delegated Access Common
      - Share Scope Indicator
      - LifeOS family-share fragments
      - consent / emergency disclosure fragments
    intended_family_direction:
      - family-shared-record-consent family
    merge_goal:
      Establish one LifeOS-oriented family for
      family viewer/editor scope,
      consent-based sharing,
      emergency limited disclosure,
      revocation rule,
      and delegated family access.
    fixed_promotion_ready_now:
      no
    reason_not_ready:
      overlap spans general share/delegation family and LifeOS-specific consent boundary

  - candidate_name: Document Bundle / Summary Pack Common
    likely_merge_with:
      - Document PDF Generation Core
      - Evidence / Attachment Intake Module
      - Export Center Pattern
      - Consultation Prep / Fact Timeline / Checklist candidate
      - submission/export/document bundle fragments
    intended_family_direction:
      - document-bundle-summary-pack family
    merge_goal:
      Establish one reusable pack family for
      attachment bundle,
      summary pack,
      submission prep pack,
      pre-share validation,
      and export-ready package metadata.
    fixed_promotion_ready_now:
      no
    reason_not_ready:
      overlap spans document, attachment, export, and prep-pack families

# ============================================================
# 3. WAVE 2 OUTPUT GOAL
# ============================================================

wave_2_output_goal:
- choose reconciled family names
- identify absorbed names
- identify retained child subfamilies
- prepare a reduced wave_2b fixed-promotion subset candidate set

# ============================================================
# 4. WAVE 2 DECISION RULES
# ============================================================

decision_rules:
- prefer broader reusable skeletons over domain-local wording
- keep consultation support separate from judgment logic itself
- keep family consent/share separate from generic role visibility when needed
- keep pack/bundle meaning above document-export UI surfaces
- do not promote before overlap is resolved

# ============================================================
# 5. RECOMMENDED NEXT ACTION
# ============================================================

recommended_next_action:
For each wave 2 target:
1. choose one reconciled family name
2. list absorbed existing names
3. define owner side
4. define retained child subfamilies
5. define wave_2b fixed-promotion candidate subset

# ============================================================
# 6. FINAL JUDGMENT
# ============================================================

final_judgment:
Wave 2 should be handled as reconciliation first,
not direct promotion.

# ============================================================
