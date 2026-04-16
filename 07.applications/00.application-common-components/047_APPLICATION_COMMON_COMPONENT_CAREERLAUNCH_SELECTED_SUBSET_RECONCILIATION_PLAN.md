# ============================================================
# APPLICATION COMMON COMPONENT CAREERLAUNCH SELECTED SUBSET RECONCILIATION PLAN
# ============================================================

status: canonical-plan
layer: application-common-components
domain: source-subset-reconciliation-plan
source_application: CareerLaunch
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This file defines the reconciliation plan
for the CareerLaunch selected subset
after formal source review.

This is not direct fixed promotion.
This is reconciliation planning first.

# ============================================================
# 1. TARGET SELECTED SUBSET
# ============================================================

target_selected_subset:
- Document Template Common
- Revision History Common
- Checklist Execution Common
- Status Pipeline Common
- Export Common
- Advisor Share Common

# ============================================================
# 2. RECONCILIATION MAP
# ============================================================

reconciliation_map:

  - candidate_name: Document Template Common
    likely_merge_with:
      - Template Materialization Common
      - template/admin/template-editor family fragments
      - multilingual template-related notes
    intended_family_direction:
      - document-template-materialization family
    merge_goal:
      Establish one reusable family for
      document template skeleton,
      document template variants,
      template expansion to draft,
      and document-oriented template reuse.
    fixed_promotion_ready_now:
      no
    reason_not_ready:
      overlap spans existing template parent family and document-specific template semantics

  - candidate_name: Revision History Common
    likely_merge_with:
      - Timeline / Audit / History Common
      - document diff / compare fragments
      - submitted-version fixation fragments
    intended_family_direction:
      - revision-history-submitted-version family
    merge_goal:
      Establish one reusable family for
      revision chronology,
      diff summary,
      submitted-version fixation,
      restore,
      and comparison visibility.
    fixed_promotion_ready_now:
      no
    reason_not_ready:
      overlap spans timeline/history parent family and document-version detail family

  - candidate_name: Checklist Execution Common
    likely_merge_with:
      - Consultation Prep / Fact Timeline / Checklist Common
      - checklist/prep execution fragments
      - staged preparation flow notes
    intended_family_direction:
      - checklist-execution-preparation family
    merge_goal:
      Establish one reusable family for
      staged checklist execution,
      pre-step completion state,
      post-step follow-up,
      and preparation-flow execution support.
    fixed_promotion_ready_now:
      no
    reason_not_ready:
      overlap spans checklist structure and execution-state flow semantics

  - candidate_name: Status Pipeline Common
    likely_merge_with:
      - Approval / Review Visibility Common
      - progression / workflow state fragments
      - proposal / pipeline visibility notes
    intended_family_direction:
      - status-pipeline-progression family
    merge_goal:
      Establish one reusable family for
      multi-stage progression visibility,
      current stage,
      terminal states,
      and progression-oriented pipeline semantics.
    fixed_promotion_ready_now:
      no
    reason_not_ready:
      overlap spans approval/review visibility and broader pipeline progression semantics

  - candidate_name: Export Common
    likely_merge_with:
      - Document Bundle / Summary Pack Common
      - export job / frozen snapshot fragments
      - pdf/docx output-result handling fragments
    intended_family_direction:
      - export-frozen-snapshot family
    merge_goal:
      Establish one reusable family for
      export request,
      export job,
      frozen snapshot linkage,
      output artifact result,
      and export-result visibility.
    fixed_promotion_ready_now:
      no
    reason_not_ready:
      overlap spans bundle/pack parent family and export/output execution family

  - candidate_name: Advisor Share Common
    likely_merge_with:
      - Explicit Share Scope / Delegated Access Common
      - review-sharing / comment-route fragments
      - advisor/mentor review visibility notes
    intended_family_direction:
      - advisor-review-share family
    merge_goal:
      Establish one reusable family for
      advisor sharing,
      reviewer viewer/editor access,
      comment route,
      revocation,
      and review-sharing flow.
    fixed_promotion_ready_now:
      no
    reason_not_ready:
      overlap spans generic share/delegation parent family and review-context sharing semantics

# ============================================================
# 3. OUTPUT GOAL
# ============================================================

output_goal:
- choose reconciled family names
- identify absorbed names
- identify retained child or sibling subfamilies
- prepare a reduced selected-subset candidate set for possible next-step promotion planning

# ============================================================
# 4. DECISION RULES
# ============================================================

decision_rules:
- do not directly promote raw source names before overlap is resolved
- prefer reconciled family naming over application-local wording
- keep strengthening-only CareerLaunch items outside this reconciliation step
- keep Persona and Background Display Common outside this step
- separate template structure from document-local copy detail
- separate pipeline semantics from specific recruiting meanings

# ============================================================
# 5. FINAL JUDGMENT
# ============================================================

final_judgment:
CareerLaunch selected subset should be handled as reconciliation first,
not direct promotion.

# ============================================================
