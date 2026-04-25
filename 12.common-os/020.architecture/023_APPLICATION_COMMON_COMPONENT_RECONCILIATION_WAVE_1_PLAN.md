# ============================================================
# APPLICATION COMMON COMPONENT RECONCILIATION WAVE 1 PLAN
# ============================================================

status: canonical-plan
layer: application-common-components
domain: reconciliation-wave-plan
wave: 1
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This file defines reconciliation wave 1
for the current strongest additive candidate strengthening set.

This is not fixed promotion yet.
This is the merge-and-reconcile planning layer
before fixed-promotion selection.

# ============================================================
# 1. WAVE 1 TARGETS
# ============================================================

wave_1_targets:
- Local-first Cache / Offline Replay Common
- Explicit Share Scope / Delegated Access Common
- Reminder / Due / Follow-up Common
- Template Materialization Common

# ============================================================
# 2. RECONCILIATION MAP
# ============================================================

reconciliation_map:

  - candidate_name: Local-first Cache / Offline Replay Common
    likely_merge_with:
      - Business Draft + Pending Operation Common
      - Pending Operation Common
      - Sync State Common
      - Local-first / draft / replay / retry families
    intended_family_direction:
      - local-first-draft-replay family
    merge_goal:
      Expand from draft-only semantics
      into local cache contract,
      offline editable state,
      replay / retry rule,
      sync failure visibility,
      and conflict-safe recovery guidance.
    fixed_promotion_ready_now:
      no
    reason_not_ready:
      overlap still spans draft, pending, sync, and replay layers

  - candidate_name: Explicit Share Scope / Delegated Access Common
    likely_merge_with:
      - Share Scope Indicator
      - Role-aware Action Visibility Layer
      - visibility/share/delegation families
    intended_family_direction:
      - explicit-share-delegated-access family
    merge_goal:
      Merge share scope, delegated editor,
      readonly share, revocable share,
      approval-governed publication boundary,
      and scope-based visibility.
    fixed_promotion_ready_now:
      no
    reason_not_ready:
      overlap still spans share meaning, role visibility, and publication boundary

  - candidate_name: Reminder / Due / Follow-up Common
    likely_merge_with:
      - Notification Inbox Framework
      - Collection Action / Follow-up History Core
      - Alert Center Component
      - overdue / delayed / reminder families
    intended_family_direction:
      - reminder-due-followup family
    merge_goal:
      Separate meaning model from inbox UI:
      reminder target,
      due trigger,
      next-action reminder,
      follow-up queue,
      advisory notification rule,
      duplicate suppression,
      dashboard escalation hint.
    fixed_promotion_ready_now:
      no
    reason_not_ready:
      overlap still spans inbox UI, alert UI, follow-up history, and due semantics

  - candidate_name: Template Materialization Common
    likely_merge_with:
      - Template Selection Surface
      - Template Selection Surface
      - template/admin/template-editor families
    intended_family_direction:
      - template-materialization family
    merge_goal:
      Expand template work
      from selection UI into definition,
      locale/domain variants,
      template expansion to draft,
      and revision trace.
    fixed_promotion_ready_now:
      no
    reason_not_ready:
      overlap still spans selection UI, template admin, and materialization/runtime layers

# ============================================================
# 3. WAVE 1 OUTPUT GOAL
# ============================================================

wave_1_output_goal:
- choose reconciled family names
- identify absorbed names
- identify surviving promotion candidates
- prepare a smaller fixed-promotion candidate set for wave 1b

# ============================================================
# 4. WAVE 1 DECISION RULES
# ============================================================

decision_rules:
- do not keep parallel names with the same responsibility
- prefer broader skeleton names over screen-local names
- keep UI-only pieces below meaning/contract families
- keep BusinessOS / application common / Civilization common ownership explicit
- do not promote before overlap is resolved

# ============================================================
# 5. RECOMMENDED NEXT ACTION
# ============================================================

recommended_next_action:
For each wave 1 target:
1. choose one reconciled family name
2. list absorbed existing names
3. define owner side
4. define fixed-promotion candidate subset
5. only then update fixed canon candidates

# ============================================================
# 6. FINAL JUDGMENT
# ============================================================

final_judgment:
Wave 1 should be handled as reconciliation first,
not direct promotion.

# ============================================================
