# ============================================================
# MBO DASHBOARD AND KPI OPERATIONS
# ============================================================

status: canonical
application: Mbo
layer: operations
owner: Boss
prepared_by: Zero

purpose:
Fixes dashboard counting rules and KPI calculation standards.

# ============================================================
# 1. COUNTING SCOPE RULES
# ============================================================

counting_scope_rules:
- all counts must respect role visibility
- all counts must respect selected period scope
- finalized and transferred records are included in historical totals
- locked records must not be shown as editable action items
- cancelled review schedules are excluded from overdue counts
- reopened records follow their current state, not only prior history

# ============================================================
# 2. CORE DASHBOARD COUNTS
# ============================================================

core_dashboard_counts:

  total_objectives:
    definition:
      count of all visible objectives in selected scope
    excludes:
      - none by default within visible scope

  draft_objectives:
    definition:
      count of visible objectives where state = draft

  active_objectives:
    definition:
      count of visible objectives where state = active

  in_review_objectives:
    definition:
      count of visible objectives where state = in_review

  evaluation_drafted_objectives:
    definition:
      count of visible objectives where state = evaluation_drafted

  finalized_objectives:
    definition:
      count of visible objectives where state = finalized

  transferred_objectives:
    definition:
      count of visible objectives where state = transferred

# ============================================================
# 3. ACTION-NEEDED COUNTS
# ============================================================

action_needed_counts:

  stale_progress_count:
    definition:
      count of visible objectives in active or in_review state
      with no progress log inside stale threshold
    excludes:
      - finalized objectives
      - transferred objectives

  overdue_review_count:
    definition:
      count of visible review schedules where
      status = planned and planned_review_at is in the past
      and no matching completed review log exists
    excludes:
      - cancelled schedules

  pending_evaluation_confirmation_count:
    definition:
      count of visible objectives where
      state = evaluation_drafted and confirmation not yet completed

  ERP_failure_count:
    definition:
      count of visible evaluations or transmissions where
      latest ERP send state = ERP_failed

# ============================================================
# 4. REVIEW / EVALUATION COUNTS
# ============================================================

review_evaluation_counts:

  scheduled_reviews_upcoming_count:
    definition:
      count of visible planned review schedules
      within configured upcoming window

  completed_reviews_count:
    definition:
      count of visible review logs completed
      within selected period scope

  confirmed_evaluations_count:
    definition:
      count of visible evaluations where confirmed_at is not null

  unconfirmed_evaluation_drafts_count:
    definition:
      count of visible evaluations in draft_saved state
      with no confirmed_at value

# ============================================================
# 5. LINKAGE / EVIDENCE COUNTS
# ============================================================

linkage_evidence_counts:

  linked_task_count:
    definition:
      count of visible objective_task_link records in selected scope

  linked_project_count:
    definition:
      count of visible objective_project_link records in selected scope

  evidence_reference_count:
    definition:
      count of visible evidence_reference records in selected scope

  interview_memo_count:
    definition:
      count of visible interview_memo records in selected scope

# ============================================================
# 6. KPI CALCULATION RULES
# ============================================================

KPI_calculation_rules:

  review_completion_rate:
    formula:
      completed_review_schedules / all_non_cancelled_review_schedules * 100
    notes:
      - if denominator is zero, value is 0 by default

  evaluation_confirmation_rate:
    formula:
      confirmed_evaluations / all_evaluation_records * 100
    notes:
      - if denominator is zero, value is 0 by default

  ERP_success_rate:
    formula:
      ERP_sent_success_count / all_ERP_send_attempts * 100
    notes:
      - resend attempts are included as attempts
      - if denominator is zero, value is 0 by default

  average_progress_percent:
    formula:
      sum(progress_percent of visible objectives) / visible_objective_count
    notes:
      - draft objectives may be included or excluded by later view mode
      - canonical default excludes draft objectives

# ============================================================
# 7. DISTRIBUTION RULES
# ============================================================

distribution_rules:

  progress_distribution:
    buckets:
      - 0_to_24
      - 25_to_49
      - 50_to_74
      - 75_to_99
      - 100

  objective_status_distribution:
    buckets:
      - draft
      - active
      - in_review
      - evaluation_drafted
      - finalized
      - transferred

# ============================================================
# 8. DISPLAY ORDER RULES
# ============================================================

display_order_rules:
- ERP failure widgets appear before ordinary reminders
- overdue review widgets appear before stale progress widgets
- action-needed widgets appear before historical summaries
- locked historical summaries appear separately from editable work areas

