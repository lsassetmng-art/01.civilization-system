# ============================================================
# MBO FULL INTEGRATED CANONICAL
# ============================================================

status: canonical
system: applications
application: Mbo
owner: Boss
prepared_by: Zero

purpose:
This document is the fully rebuilt canonical integrated book
for the Mbo application.
It consolidates product definition, scope, screens, data,
governance, SQL, implementation preparation, acceptance,
restart, and wave-based continuation into one entry document.

# ============================================================
# 0. GLOBAL REQUIREMENTS
# ============================================================

global_requirements:
- multilingual support is mandatory
- multi-currency support is mandatory
- iphone support is mandatory
- android support is mandatory
- pc support is mandatory
- tablet support is mandatory

global_meaning:
Mbo must not be designed as single-device,
single-language, or single-currency software.
The product must preserve internationalization,
cross-device usability, and future ERP-facing extensibility
from the beginning.

# ============================================================
# 1. PRODUCT IDENTITY
# ============================================================

product_identity:
Mbo is an execution-centered goal and evaluation management application.

not_only:
- not only a goal sheet tool
- not only an evaluation sheet tool
- not only a review memo surface
- not only a lightweight HR form application

actual_meaning:
- objective definition front
- action planning front
- progress evidence front
- review continuity front
- evaluation confirmation front
- ERP transfer preparation front

product_message:
Mbo should be understood as:
goal -> action -> progress -> review -> evaluation -> lock -> ERP transfer

competitive_position:
Mbo should satisfy baseline HR-evaluation expectations
while differentiating through:
- action-plan depth
- blocker and next-action continuity
- execution-centered dashboard visibility
- governed final lock
- governed reopen
- ERP linkage readiness
- ERP resend traceability

# ============================================================
# 2. COMPETITIVE DESIGN CONCLUSION
# ============================================================

competitive_design_conclusion:
Rivals are strong in evaluation templates,
workflow support, progress visibility,
smartphone support, reminder support,
and interview/review continuity.

Mbo must therefore:
- match baseline market expectations
- avoid being only another evaluation sheet product
- differentiate on execution continuity and ERP readiness

must_match_baseline:
- template support
- evaluation workflow support
- progress visibility
- reminder support
- read-friendly summary views
- smartphone usability

must_win_direction:
- objective to action continuity
- progress evidence depth
- blocker and next-action tracking
- governed lock and reopen
- ERP outbound control and history

# ============================================================
# 3. FORMAL SCOPE
# ============================================================

formal_scope:
- priority A included
- priority B included
- priority C deferred

priority_A_core:
- period management
- objective CRUD
- quantitative target management
- qualitative target management
- success criteria management
- priority management
- weight management
- action plan breakdown
- progress logs
- blocker recording
- next-action recording
- review schedule handling
- review result logging
- evaluation draft
- evaluation confirmation
- final lock
- ERP outbound preparation
- ERP transmission history
- stale progress alerting
- delayed review alerting

priority_B_expanded:
- manager comment templates
- department common objective templates
- bulk review scheduling
- objective duplication by period
- KPI chart visualization
- aggregation export
- review reminder batch sending
- project linkage
- task linkage
- evidence attachment reference
- resend control for ERP failures
- read-only executive summary views
- review cadence presets
- evaluation calibration support
- interview memo support

future_scope_deferred:
- AI-assisted drafting
- AI-assisted summary
- advanced prediction
- advanced comparative analytics
- broader federation outside current ERP-focused scope

# ============================================================
# 4. USER ROLES
# ============================================================

fixed_roles:
- objective_owner
- manager
- evaluator
- HR_operator
- executive_viewer
- department_template_admin
- system_auditor

role_meaning:
objective_owner:
- owns goal execution records
- creates and updates own unlocked operational records

manager:
- handles review scheduling and review logs
- supervises subordinate execution visibility

evaluator:
- drafts and confirms evaluation
- triggers final lock through governed confirm path

HR_operator:
- handles ERP-facing operational control
- handles resend/export/reminder operational jobs
- handles governance-heavy operator surfaces

executive_viewer:
- read-only summary visibility
- no ordinary edit responsibility

department_template_admin:
- scoped template and preset administration
- no ordinary evaluation override responsibility

system_auditor:
- read-only governance and operational trace visibility

# ============================================================
# 5. CORE BUSINESS CHAIN
# ============================================================

core_business_chain:
period_open
-> objective_create
-> action_plan_attach
-> progress_update_repeat
-> review_schedule_and_log
-> evaluation_draft
-> evaluation_confirm
-> final_lock
-> ERP_transfer
-> resend_if_failed_under_governance

business_chain_meaning:
Mbo is not complete at objective creation.
Its meaningful lifecycle continues until confirmation,
lock, and ERP-ready transmission handling exist.

# ============================================================
# 6. SCREEN SCOPE
# ============================================================

formal_screen_scope:
- dashboard
- objective_list
- objective_detail
- objective_create_edit
- objective_template_select
- department_template_admin
- action_plan_list
- action_plan_edit
- progress_update
- progress_history
- review_schedule
- bulk_review_schedule
- review_log
- review_cadence_preset_admin
- manager_comment_template_admin
- evaluation_draft
- evaluation_confirm
- evaluation_calibration
- interview_memo
- KPI_dashboard
- aggregation_export
- evidence_reference_picker
- task_link_picker
- project_link_picker
- executive_summary_view
- ERP_history
- ERP_resend_control
- reminder_batch_send
- reopen_request
- reopen_queue
- reopen_approval
- reopen_execution
- ERP_impact_note_view

screen_principles:
- editable vs read-only must be explicit
- lock state must be visually visible
- alert vs reminder surfaces must be distinct
- cross-device responsive behavior is mandatory
- dashboard is execution-centered, not decorative
- executive summary must remain read-only

core_first_slice_screens:
- dashboard summary shell
- objective list
- objective create/edit
- objective detail
- action plan list/create
- progress update/history

# ============================================================
# 7. MODEL SCOPE
# ============================================================

core_entities:
- period
- objective
- action_plan
- progress_log
- review_schedule
- review_log
- evaluation
- objective_template
- manager_comment_template
- review_cadence_preset
- interview_memo
- evidence_reference
- objective_task_link
- objective_project_link
- evaluation_calibration_record
- aggregation_export_job
- reminder_batch_job
- ERP_transmission_history
- ERP_resend_job
- reopen_request
- reopen_approval_log
- reopen_execution_log
- ERP_impact_note

model_principles:
- objective is the primary business record
- action plan belongs to objective
- progress logs are append-first
- review logs are append-first
- evaluation confirmation creates lock state
- ERP transmission history is preserved as historical trace
- reopen governance creates separate historical records

# ============================================================
# 8. STATE TRANSITION
# ============================================================

objective_states:
- draft
- active
- in_review
- evaluation_drafted
- finalized
- transferred

objective_transition_rules:
- draft -> active requires required fields and open period
- active -> in_review may occur through review workflow start
- in_review -> active may occur when review continues without finalization
- active/in_review -> evaluation_drafted requires evaluator flow
- evaluation_drafted -> finalized requires evaluation confirmation
- finalized -> transferred requires successful ERP send
- finalized/transferred ordinary reverse transitions are prohibited
- reopen-based return is exceptional only

review_schedule_states:
- planned
- completed
- cancelled
- overdue

evaluation_states:
- not_started
- draft_saved
- confirmed
- ERP_sent
- ERP_failed

job_states:
- queued
- running
- completed
- failed

# ============================================================
# 9. FINAL LOCK
# ============================================================

final_lock_principles:
- evaluation confirmation creates final lock
- normal objective editing is blocked after lock
- normal action plan editing is blocked after lock
- normal progress creation is blocked after lock
- normal evaluation editing is blocked after lock
- ERP-facing status handling may continue only through controlled paths
- history remains readable after lock

locked_meaning:
Lock is not merely a UI disable.
Lock is a business governance boundary.

post_lock_allowed:
- read visibility according to role
- ERP transmission status handling
- ERP resend creation under authorized role
- audit/history visibility
- governed reopen-related records

post_lock_prohibited:
- ordinary objective edit
- ordinary action plan edit
- ordinary progress creation
- ordinary evaluation modification

# ============================================================
# 10. REOPEN GOVERNANCE
# ============================================================

reopen_principles:
- reopen is exceptional
- reopen is governance-controlled
- reopen must preserve prior confirmation history
- reopen must preserve ERP transmission history
- transferred reopen is stricter than finalized-only reopen

reopen_target_levels:
- finalized_record_reopen
- transferred_record_reopen

allowed_reopen_reasons:
- material_input_error
- evaluator_error
- governance_correction
- ERP_rejection_requires_fix
- compliance_required_correction

disallowed_reopen_reasons:
- casual_text_cleanup
- preference_change_only
- silent replacement
- untracked score tuning

reopen_scope_candidates:
- evaluation_only
- evaluation_and_objective
- evaluation_and_action_plan
- full_record_scope

reopen_status_candidates:
- requested
- under_review
- approved
- rejected
- executed
- closed

reopen_execution_rule:
No reopen may execute without governed approval record.

# ============================================================
# 11. PERMISSION PRINCIPLES
# ============================================================

permission_principles:
- permissions are role-based
- company scope is mandatory
- lock checks are mandatory
- state checks are mandatory
- UI-only restrictions are insufficient
- server-side authorization is mandatory

high_level_permission_summary:
objective_owner:
- objective create/read/update (unlocked own)
- action plan create/read/update (unlocked own objective)
- progress create/read (unlocked own objective)
- evidence/task/project/interview create/read

manager:
- review schedule create/read/update
- review log create/read
- subordinate execution read visibility

evaluator:
- evaluation create/read/update
- evaluation confirm
- evaluation-related read visibility

HR_operator:
- ERP transmission visibility
- ERP resend create/read
- export/reminder job create/read
- governance-heavy operator visibility

executive_viewer:
- read-only aggregate visibility

department_template_admin:
- template and preset admin only

system_auditor:
- read-only operational/governance visibility only

# ============================================================
# 12. ALERT / REMINDER RULES
# ============================================================

fixed_alerts:
- stale_progress_alert
- overdue_review_alert
- pending_evaluation_alert
- ERP_send_failure_alert
- lock_state_attention_alert

fixed_reminders:
- progress_update_reminder
- scheduled_review_reminder
- evaluation_confirmation_reminder
- batch_review_reminder
- batch_progress_reminder

default_thresholds:
- stale progress threshold: 7 days
- review upcoming reminder: 3 days before
- evaluation confirmation reminder: 3 days after draft
- ERP failure attention: immediate

visibility_principles:
- alerts must remain visible until resolved or governed closed
- reminders are prompt-oriented, not error-oriented
- ERP failures must be more prominent than ordinary reminders
- executive summary should show aggregates, not edit prompts

# ============================================================
# 13. DASHBOARD / KPI RULES
# ============================================================

dashboard_principles:
- execution-centered
- action-needed items separated from historical summaries
- alert vs reminder distinction preserved
- locked records not shown as normal editable work
- counts are role-scoped and period-scoped

dashboard_operational_widgets:
- stale_progress_count
- overdue_review_count
- pending_evaluation_confirmation_count
- ERP_failure_count

dashboard_state_widgets:
- total_objectives
- draft_objectives
- active_objectives
- in_review_objectives
- evaluation_drafted_objectives
- finalized_objectives
- transferred_objectives

dashboard_linkage_widgets:
- linked_task_count
- linked_project_count
- evidence_reference_count
- interview_memo_count

KPI_widgets:
- review_completion_rate
- evaluation_confirmation_rate
- ERP_success_rate
- average_progress_percent
- progress_distribution
- objective_status_distribution

# ============================================================
# 14. API CONTRACT STATUS
# ============================================================

API_contract_status:
exact request and response payloads are fixed.

common_response_envelope:
success:
  status: ok
  data: object
  meta:
    request_id: string
    timestamp: string

error:
  status: error
  error:
    code: string
    message: string
    field_errors: array

major_API_groups:
- objective APIs
- objective template APIs
- action plan APIs
- progress APIs
- review schedule APIs
- review log APIs
- manager comment template APIs
- evaluation APIs
- calibration APIs
- interview memo APIs
- evidence reference APIs
- task/project link APIs
- KPI/executive summary APIs
- export/reminder APIs
- ERP history/resend APIs
- reopen governance APIs

first_backend_slice_endpoints:
- GET /api/mbo/objectives
- GET /api/mbo/objectives/{objective_id}
- POST /api/mbo/objectives
- PUT /api/mbo/objectives/{objective_id}
- POST /api/mbo/objectives/{objective_id}/activate
- GET /api/mbo/objectives/{objective_id}/action-plans
- POST /api/mbo/objectives/{objective_id}/action-plans
- GET /api/mbo/objectives/{objective_id}/progress-logs
- POST /api/mbo/objectives/{objective_id}/progress-logs
- GET /api/mbo/kpi-dashboard

# ============================================================
# 15. ERP OUTBOUND
# ============================================================

ERP_position:
- Mbo is preparation front
- ERP is receiving business-side system of record

ERP_send_rules:
- only finalized and validated records may be sent
- transmission uses finalized snapshot semantics
- resend must preserve prior history
- resend requires explicit reason
- ERP failure must remain visible
- ERP send must remain auditable

ERP_event_name:
- mbo.evaluation.finalized.v1

ERP_payload_core:
- event envelope
- transmission identity
- objective_snapshot
- evaluation_snapshot
- review_summary
- linkage_summary
- ERP_control

required_send_conditions:
- objective state finalized
- evaluation confirmed
- final_lock_flag true
- actor has ERP transmit permission
- payload validation passes

# ============================================================
# 16. DATABASE STATUS
# ============================================================

database_status:
- table architecture fixed
- CREATE TABLE SQL fixed
- check constraints fixed
- indexes fixed
- helper views fixed
- updated_at trigger strategy fixed
- RLS direction fixed
- master/seed data fixed
- sample test data fixed
- executable quick-check fixed

principal_SQL_files:
- 1200023_MBO_SQL_FULL_INTEGRATED.sql
- 1200024_MBO_SQL_EXECUTION_ORDER_PACK.md
- 1200025_MBO_SQL_TEST_DATA_SAMPLE_PACK.sql
- 1200027_MBO_DDL_VALIDATION_CHECKLIST.md
- 1200029_MBO_SQL_EXECUTABLE_QUICKCHECK.sql

SQL_component_summary:
- schema: app_mbo
- objective lifecycle tables
- governance tables
- ERP trace tables
- helper views for list/detail/dashboard
- validation views for inconsistency detection

# ============================================================
# 17. RLS / AUTH DIRECTION
# ============================================================

RLS_direction:
- row level security enabled on primary tables
- request JWT claims expected for:
  - sub
  - app_role
  - company_id

RLS_principles:
- objective_owner scope on own objective records
- manager scope on review-related subordinate visibility
- evaluator scope on evaluation visibility/update paths
- HR_operator scope on ERP/job/governance operation
- executive_viewer read-only summary scope
- department_template_admin template/preset admin scope
- system_auditor read-only audit scope

auth_design_note:
Production auth wiring is not yet coded here,
but the direction is fixed and documented.

# ============================================================
# 18. MASTER / SEED / SAMPLE DATA
# ============================================================

master_seed_status:
- status masters fixed
- review masters fixed
- priority masters fixed
- job status masters fixed
- reopen reason/scope/status masters fixed
- reminder type masters fixed
- export format masters fixed
- link role masters fixed

sample_data_status:
- open period sample
- active objective sample
- finalized objective sample
- transferred objective sample
- action plan samples
- progress log samples
- review schedule/log samples
- evaluation samples
- ERP failed/sent samples
- resend sample
- reopen governance sample
- export/reminder/calibration samples

sample_data_meaning:
The DB can be validated and demo-read
without inventing new initial records first.

# ============================================================
# 19. QUICK-CHECK / VALIDATION
# ============================================================

validation_status:
- DDL validation checklist fixed
- executable quick-check SQL fixed
- validation view checks fixed
- trigger smoke test fixed
- dashboard/view checks fixed
- optional negative tests fixed

quickcheck_targets:
- table existence
- row counts
- constraints/indexes/triggers presence
- view readability
- sample data integrity
- dashboard aggregate base output
- lock inconsistency detection
- ERP failure visibility
- reopen queue visibility

# ============================================================
# 20. IMPLEMENTATION STATUS
# ============================================================

implementation_status:
- backend task breakdown fixed
- frontend task breakdown fixed
- first-slice exact scope fixed
- endpoint start order fixed
- screen start order fixed
- work instructions fixed
- detailed task sheets fixed
- progress ledgers fixed
- issue/deviation templates fixed
- acceptance checklist fixed
- acceptance runbook fixed
- wave control fixed
- pass gate fixed
- restart-safe checklist fixed
- final restart packs fixed

implementation_principle:
Mbo should continue from implementation-first work,
not from redesign-first work.

recommended_first_slice_backend:
- objective list/detail/create/update/activate
- action plan list/create
- progress log list/create
- dashboard summary

recommended_first_slice_frontend:
- objective list
- objective create/edit
- objective detail
- action plan list/create
- progress update/history
- dashboard summary shell

# ============================================================
# 21. WAVE CONTROL
# ============================================================

implementation_waves:
wave_01:
- core CRUD and execution start

wave_02:
- review flow

wave_03:
- evaluation flow

wave_04:
- summary and jobs

wave_05:
- ERP flow

wave_06:
- reopen governance

wave_control_principles:
- earlier wave must pass before later expansion
- critical defects block promotion
- earlier-wave regression blocks promotion
- design deviation must be recorded before change
- final lock and reopen semantics must not be weakened

# ============================================================
# 22. ACCEPTANCE / PASS GATE
# ============================================================

first_slice_pass_requires:
- DB apply complete
- sample data apply complete
- quick-check complete
- backend first slice passed
- frontend first slice passed
- cross-flow acceptance passed
- critical issues zero
- no unapproved design deviation remains

cross_flow_examples:
- created objective appears in list
- activated objective accepts action plan
- activated objective accepts progress log
- latest progress appears in detail
- locked sample blocks normal write path
- dashboard reflects scoped counts
- multi-device baseline is usable

post_pass_order:
- review flow
- evaluation flow
- summary/jobs
- ERP flow
- reopen governance

# ============================================================
# 23. ISSUE / DEVIATION CONTROL
# ============================================================

issue_control_principle:
Do not silently change fixed design.
Any deviation from canonical-fixed design
must be recorded before being adopted.

recordable_issue_types:
- bug
- blocker
- implementation_gap
- contract_mismatch
- design_deviation
- performance_issue
- auth_issue
- data_issue

decision_status_candidates:
- open
- under_review
- approved_fix
- rejected_change
- resolved

# ============================================================
# 24. RESTART / HANDOFF
# ============================================================

restart_principle:
Do not restart from product-definition discussion.
Restart from implementation execution.

minimum_restart_set:
- 000_MBO_INDEX.md
- 00_MBO_INTEGRATED.md
- 1200023_MBO_SQL_FULL_INTEGRATED.sql
- 1200029_MBO_SQL_EXECUTABLE_QUICKCHECK.sql
- 1300010_MBO_BACKEND_WORK_INSTRUCTION.md
- 1300011_MBO_FRONTEND_WORK_INSTRUCTION.md
- 1300020_MBO_FIRST_SLICE_ACCEPTANCE_RUNBOOK.md
- 1300024_MBO_IMPLEMENTATION_WAVE_CONTROL.md

do_not_reopen_without_issue_record:
- product positioning
- feature scope A/B
- final lock semantics
- governed reopen semantics
- ERP snapshot outbound semantics
- common component separation

# ============================================================
# 25. CURRENT CONCLUSION
# ============================================================

current_conclusion:
Mbo has reached a strong canonical-fixed,
implementation-ready state.

meaning:
- design-first expansion can stop here
- implementation-first continuation is appropriate
- future refinement should be issue-driven and additive
- the product no longer needs foundational redesign discussion

best_current_next_action:
- apply integrated SQL
- apply sample test data
- run quick-check
- implement backend first slice
- implement frontend first slice
- run first-slice acceptance
- promote to later waves only after pass

