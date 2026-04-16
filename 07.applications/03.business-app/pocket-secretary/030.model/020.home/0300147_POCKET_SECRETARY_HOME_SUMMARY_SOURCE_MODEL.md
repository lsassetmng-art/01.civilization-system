# ============================================================
# POCKET SECRETARY HOME SUMMARY SOURCE MODEL
# ============================================================

status: draft-additive
type: source-model
application: PocketSecretary
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

purpose:
Fix the exact input sources for home summary priority selection
before implementation alignment,
so that Dashboard summary behavior is deterministic.

scope:
- primary summary candidate sources
- source priority meaning
- current source availability
- fallback provider rules
- placeholder handling for not-yet-implemented sources

# ============================================================
# 1. SUMMARY PRIORITY REFERENCE
# ============================================================

canonical_priority_order:
1. upcoming schedule within 30 minutes
2. due-today unfinished todo
3. important notification
4. unresolved travel expense
5. general secretary guidance

base_scores:
- upcoming schedule within 30 minutes: 100
- due-today unfinished todo: 80
- important notification: 70
- unresolved travel expense: 60
- general secretary guidance: 10

# ============================================================
# 2. SOURCE FIXING PRINCIPLE
# ============================================================

source_fixing_principle:
- each summary type must have a primary source
- temporary implementation gaps must use explicit placeholder status
- fallback providers must be deterministic
- one summary type must not silently read from multiple unrelated sources
- source absence must fail soft and not crash Dashboard

# ============================================================
# 3. SOURCE MAP
# ============================================================

summary_source_map:

  - summary_type: upcoming_schedule_within_30_minutes
    priority_rank: 1
    base_score: 100
    primary_source:
      - TodayEngine
      - UpcomingEventPicker
    source_meaning:
      upcoming schedule candidate derived from local schedule/event data
    expected_current_status:
      available
    selection_rule:
      only candidates within 30 minutes qualify for top-priority schedule summary
    fallback_rule:
      if no qualifying event exists, no schedule candidate is produced
    implementation_note:
      TodayEngine and UpcomingEventPicker should be treated as the canonical schedule-side home source path

  - summary_type: due_today_unfinished_todo
    priority_rank: 2
    base_score: 80
    primary_source:
      - local todo domain
      - todo repository / store used by PocketSecretary current implementation
    source_meaning:
      unfinished todo item whose due scope is today
    expected_current_status:
      available_or_partially_available
    selection_rule:
      only unfinished todo items due today qualify
    fallback_rule:
      if todo source is unavailable, no todo candidate is produced
    implementation_note:
      exact current class path may differ, but PocketSecretary todo local source is the canonical source family

  - summary_type: important_notification
    priority_rank: 3
    base_score: 70
    primary_source:
      - local notification domain
      - notification center / notification helper side local source
    source_meaning:
      important unresolved notification candidate surfaced for home summary
    expected_current_status:
      available_or_partially_available
    selection_rule:
      only notification items classified as important qualify
    fallback_rule:
      if no important unresolved notification exists, no notification candidate is produced
    implementation_note:
      notification center style local state is the canonical notification-side source family

  - summary_type: unresolved_travel_expense
    priority_rank: 4
    base_score: 60
    primary_source:
      - travel expense domain
      - PocketSecretary travel expense local/business-linked source
    source_meaning:
      unresolved travel expense item that requires user attention
    expected_current_status:
      placeholder
    selection_rule:
      only unresolved actionable expense items qualify
    fallback_rule:
      current phase may produce no candidate until the expense source is aligned
    implementation_note:
      this source is intentionally fixed now even if implementation is still incomplete

  - summary_type: general_secretary_guidance
    priority_rank: 5
    base_score: 10
    primary_source:
      - local dashboard fallback provider
      - secretary guidance fallback builder
    source_meaning:
      neutral non-urgent guidance when higher-priority actionable items do not exist
    expected_current_status:
      available_as_fallback
    selection_rule:
      used only when no stronger candidate survives selection
    fallback_rule:
      deterministic safe wording must exist
    implementation_note:
      this is the canonical final fallback summary provider

# ============================================================
# 4. SOURCE STATUS INTERPRETATION
# ============================================================

status_meaning:

  available:
  source exists and may be used as the main implementation source.

  available_or_partially_available:
  source family exists,
  but exact adapter or extraction logic may still need final alignment.

  placeholder:
  source meaning is fixed in design,
  but implementation may still be deferred.

  available_as_fallback:
  source exists as a deterministic final fallback provider.

# ============================================================
# 5. CANDIDATE PRODUCTION RULE
# ============================================================

candidate_production_rule:
- each summary type produces zero or one preferred candidate for home summary selection
- producing multiple raw records is allowed internally,
  but the home selector should receive normalized candidate items
- missing source data results in no candidate,
  not in dashboard failure
- fallback guidance should only appear when stronger candidates do not win

# ============================================================
# 6. SOURCE BOUNDARY RULE
# ============================================================

source_boundary_rule:
- schedule candidate must not be synthesized from todo source
- todo candidate must not be synthesized from notification source
- notification candidate must not be synthesized from generic guidance source
- travel expense candidate must remain distinct from general financial reminders
- general guidance must remain a fallback, not a disguised high-priority item

# ============================================================
# 7. FUTURE EXPANSION RULE
# ============================================================

future_expansion_rule:
new candidate types may be added later,
but they must not silently redefine the current canonical five-source baseline.

future_possible_additions:
- business draft reminder
- company secretary pending guidance
- ERP submission reminder
- unread consultation follow-up

rule:
future additions require explicit contract update.

# ============================================================
# 8. IMPLEMENTATION MAPPING DIRECTION
# ============================================================

implementation_mapping_direction:

schedule_side:
- TodayEngine
- UpcomingEventPicker

todo_side:
- PocketSecretary todo local domain classes

notification_side:
- PocketSecretary notification local domain classes
- notification center / helper related state

travel_expense_side:
- PocketSecretary travel expense domain
- current phase placeholder if unresolved

guidance_side:
- Dashboard fallback summary builder
- Secretary wording fallback path

# ============================================================
# 9. FAILURE / EMPTY RULE
# ============================================================

failure_empty_rule:
- if schedule source has no qualifying upcoming item, omit schedule candidate
- if todo source has no due-today unfinished item, omit todo candidate
- if notification source has no important unresolved item, omit notification candidate
- if travel expense source is not yet ready, omit travel expense candidate
- if all stronger candidates are absent, produce general guidance candidate

# ============================================================
# 10. DEFINITION OF SOURCE FIXED
# ============================================================

source_model_is_fixed_when:
- each canonical summary type has one primary source family
- placeholder sources are explicitly marked
- fallback behavior is explicit
- no summary type relies on ambiguous mixed sourcing

# ============================================================
# 11. NEXT BEST ACTION
# ============================================================

next_best_action:
Fix the minimum secretary wording dictionary for:
- schedule_notice
- todo_notice
- notification_notice
- error_soft
- general_guidance

