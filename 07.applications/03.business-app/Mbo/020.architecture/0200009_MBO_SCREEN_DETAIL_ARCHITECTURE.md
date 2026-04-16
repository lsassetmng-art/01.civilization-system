# ============================================================
# MBO SCREEN DETAIL ARCHITECTURE
# PRIORITY A + B
# ============================================================

status: canonical
application: Mbo
layer: architecture
owner: Boss
prepared_by: Zero

purpose:
Defines detailed screen responsibilities,
major sections, and main actions
for the formal Mbo scope including priority A and B.

# ============================================================
# 1. DASHBOARD
# ============================================================

dashboard:
  purpose:
    - show current period status
    - show objective execution health
    - show pending review and evaluation work
    - show ERP linkage status
  main_sections:
    - current period summary
    - objectives by status
    - overdue progress updates
    - overdue reviews
    - pending evaluation confirmations
    - ERP send failures
    - KPI chart summary
  main_actions:
    - open objective detail
    - open overdue items
    - open KPI dashboard
    - open ERP history

# ============================================================
# 2. OBJECTIVE LIST
# ============================================================

objective_list:
  purpose:
    - browse and search objectives
    - filter objectives by period, owner, status, category, manager
  main_sections:
    - filter bar
    - result list
    - bulk action entry points
  main_actions:
    - create objective
    - open objective detail
    - duplicate from previous period
    - open template selection
    - open bulk review schedule

# ============================================================
# 3. OBJECTIVE CREATE / EDIT
# ============================================================

objective_create_edit:
  purpose:
    - create draft objective
    - update non-finalized objective
  main_sections:
    - basic information
    - targets and criteria
    - priority and weight
    - period and ownership
    - linkage summary
  fields:
    - title
    - objective_category
    - objective_type
    - quantitative_target
    - qualitative_target
    - success_criteria
    - priority
    - weight
    - start_date
    - due_date
    - owner_user_id
    - manager_user_id
  main_actions:
    - save draft
    - activate objective
    - open template selection

# ============================================================
# 4. OBJECTIVE DETAIL
# ============================================================

objective_detail:
  purpose:
    - view complete objective state
    - central entry point for execution and review
  main_sections:
    - objective summary
    - action plan summary
    - latest progress
    - review summary
    - evaluation summary
    - linkage summary
    - interview memo summary
    - ERP summary
  main_actions:
    - edit objective
    - add progress log
    - open action plans
    - open reviews
    - open evaluation draft
    - open evidence picker
    - open task/project linkage

# ============================================================
# 5. OBJECTIVE TEMPLATE SELECT
# ============================================================

objective_template_select:
  purpose:
    - select reusable templates
  main_sections:
    - template scope tabs
    - search and filter
    - template preview
  main_actions:
    - apply template
    - preview template detail

# ============================================================
# 6. DEPARTMENT TEMPLATE ADMIN
# ============================================================

department_template_admin:
  purpose:
    - manage department common objective templates
  main_sections:
    - template list
    - template editor
    - active/inactive control
  main_actions:
    - create template
    - update template
    - activate template
    - deactivate template

# ============================================================
# 7. ACTION PLAN LIST / EDIT
# ============================================================

action_plan_list:
  purpose:
    - show steps linked to one objective
  main_sections:
    - step list
    - completion summary
  main_actions:
    - create step
    - open step edit

action_plan_edit:
  purpose:
    - create or update action steps
  fields:
    - step_no
    - step_title
    - step_description
    - owner_user_id
    - planned_start_at
    - planned_end_at
    - completion_percent
    - status
  main_actions:
    - save action step

# ============================================================
# 8. PROGRESS UPDATE / HISTORY
# ============================================================

progress_update:
  purpose:
    - register latest objective progress
  main_sections:
    - current progress snapshot
    - update form
    - evidence reference area
  fields:
    - progress_percent
    - progress_comment
    - blocker_note
    - next_action_note
  main_actions:
    - save progress log
    - attach evidence reference

progress_history:
  purpose:
    - show chronological progress trail
  main_sections:
    - timeline list
    - evidence reference summary
  main_actions:
    - open log detail

# ============================================================
# 9. REVIEW SCHEDULE / BULK REVIEW SCHEDULE
# ============================================================

review_schedule:
  purpose:
    - schedule review timing for one objective
  main_sections:
    - current schedules
    - schedule editor
  fields:
    - review_type
    - planned_review_at
    - reviewer_user_id
    - status
  main_actions:
    - create schedule
    - update schedule
    - cancel schedule

bulk_review_schedule:
  purpose:
    - create schedules for many targets at once
  main_sections:
    - target filter
    - target preview
    - bulk setup form
  main_actions:
    - create bulk schedules

# ============================================================
# 10. REVIEW LOG / CADENCE PRESET ADMIN
# ============================================================

review_log:
  purpose:
    - record review results and comments
  main_sections:
    - review history
    - review entry form
  fields:
    - review_type
    - reviewed_at
    - review_comment
    - review_result
  main_actions:
    - save review log
    - apply manager comment template

review_cadence_preset_admin:
  purpose:
    - manage cadence presets
  main_sections:
    - preset list
    - preset editor
  main_actions:
    - create preset
    - update preset
    - activate preset
    - deactivate preset

# ============================================================
# 11. MANAGER COMMENT TEMPLATE ADMIN
# ============================================================

manager_comment_template_admin:
  purpose:
    - manage reusable manager comment templates
  main_sections:
    - template list
    - editor
  main_actions:
    - create template
    - update template
    - activate template
    - deactivate template

# ============================================================
# 12. EVALUATION DRAFT / CONFIRM / CALIBRATION
# ============================================================

evaluation_draft:
  purpose:
    - prepare evaluation record before final confirmation
  main_sections:
    - evaluation input
    - related review summary
    - related progress summary
  fields:
    - evaluation_score
    - evaluation_comment
  main_actions:
    - save draft

evaluation_confirm:
  purpose:
    - confirm final evaluation and lock mutable areas
  main_sections:
    - confirmation summary
    - lock effect notice
  main_actions:
    - confirm evaluation
    - lock record

evaluation_calibration:
  purpose:
    - compare evaluations and record calibration actions
  main_sections:
    - comparison list
    - calibration note entry
    - status summary
  main_actions:
    - record calibration decision

# ============================================================
# 13. INTERVIEW MEMO
# ============================================================

interview_memo:
  purpose:
    - keep interview or 1on1 notes linked to objective
  main_sections:
    - memo list
    - memo form
  fields:
    - memo_type
    - memo_at
    - memo_body
  main_actions:
    - save memo

# ============================================================
# 14. KPI DASHBOARD
# ============================================================

KPI_dashboard:
  purpose:
    - show KPI trends and aggregated execution signals
  main_sections:
    - period selector
    - chart area
    - summary cards
  main_actions:
    - switch scope
    - export summary

# ============================================================
# 15. AGGREGATION EXPORT
# ============================================================

aggregation_export:
  purpose:
    - request export and track output status
  main_sections:
    - export request form
    - job history
  fields:
    - export_scope
    - export_format
  main_actions:
    - request export
    - open job detail

# ============================================================
# 16. EVIDENCE / TASK / PROJECT PICKERS
# ============================================================

evidence_reference_picker:
  purpose:
    - attach evidence references
  main_sections:
    - reference search
    - selected reference list
  main_actions:
    - add reference
    - remove reference

task_link_picker:
  purpose:
    - link tasks to objective
  main_sections:
    - task search
    - selected links
  main_actions:
    - add task link
    - remove task link

project_link_picker:
  purpose:
    - link projects to objective
  main_sections:
    - project search
    - selected links
  main_actions:
    - add project link
    - remove project link

# ============================================================
# 17. EXECUTIVE SUMMARY VIEW
# ============================================================

executive_summary_view:
  purpose:
    - provide read-only executive visibility
  main_sections:
    - filtered summary cards
    - status matrix
    - KPI highlights
  main_actions:
    - change filter only

# ============================================================
# 18. ERP HISTORY / ERP RESEND CONTROL
# ============================================================

ERP_history:
  purpose:
    - show ERP send history and result states
  main_sections:
    - transmission list
    - payload summary
    - failure summary
  main_actions:
    - open transmission detail

ERP_resend_control:
  purpose:
    - request controlled resend for failed transmission
  main_sections:
    - failed transmission list
    - resend reason form
    - resend history
  fields:
    - resend_reason
  main_actions:
    - request resend

# ============================================================
# 19. REMINDER BATCH SEND
# ============================================================

reminder_batch_send:
  purpose:
    - send reminders in batch for updates or reviews
  main_sections:
    - target selection
    - message option summary
    - job history
  fields:
    - reminder_type
    - target_scope
  main_actions:
    - submit reminder batch job
