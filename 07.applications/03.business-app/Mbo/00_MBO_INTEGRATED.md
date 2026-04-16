# ============================================================
# MBO INTEGRATED
# REGENERATED CANONICAL INTEGRATED EDITION
# ============================================================

status: canonical
system: applications
application: Mbo
owner: Boss
prepared_by: Zero

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

# ============================================================
# 1. PRODUCT DEFINITION
# ============================================================

product_definition:
Mbo is an execution-centered goal and evaluation management application.

not_only:
- not only a goal sheet tool
- not only an evaluation sheet tool

actual_meaning:
- objective definition front
- action planning front
- progress evidence front
- review continuity front
- evaluation confirmation front
- ERP transfer preparation front

competitive_position:
Mbo should satisfy baseline HR-evaluation expectations
while differentiating through:
- action-plan depth
- blocker and next-action continuity
- final lock governance
- ERP linkage readiness
- ERP resend traceability
- execution-centered dashboard visibility

# ============================================================
# 2. FORMAL SCOPE
# ============================================================

formal_scope:
- priority A included
- priority B included
- priority C deferred

major_function_scope:
- objective CRUD
- objective templates
- department templates
- action plan breakdown
- progress logs
- blocker and next-action logs
- review schedules
- bulk review schedules
- review logs
- manager comment templates
- evaluation draft
- evaluation confirm
- final lock
- calibration support
- interview memos
- evidence references
- task links
- project links
- KPI dashboard
- aggregation export
- reminder batch jobs
- executive summary
- ERP history
- ERP resend control
- reopen governance

# ============================================================
# 3. USER ROLES
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

manager:
- operates review flow

evaluator:
- drafts and confirms evaluation

HR_operator:
- handles ERP-facing and operational control paths

executive_viewer:
- read-only aggregate visibility

department_template_admin:
- manages scoped templates and preset-like admin surfaces

system_auditor:
- read-only governance and trace visibility

# ============================================================
# 4. CORE BUSINESS CHAIN
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

# ============================================================
# 5. SCREEN ARCHITECTURE
# ============================================================

screen_scope:
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

screen_principles:
- editable vs read-only states must be explicit
- lock state must be visible
- alert vs reminder visibility must be distinct
- responsive handling for iphone/android/pc/tablet is mandatory

# ============================================================
# 6. DATA MODEL
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
- progress and review logs are append-first
- evaluation confirmation creates lock state
- ERP transmission is downstream from finalized snapshot
- reopen governance preserves historical trace

# ============================================================
# 7. STATE TRANSITION
# ============================================================

objective_states:
- draft
- active
- in_review
- evaluation_drafted
- finalized
- transferred

transition_rules:
- draft -> active requires required fields and open period
- active/in_review -> evaluation_drafted requires evaluator flow
- evaluation_drafted -> finalized requires evaluation confirmation
- finalized -> transferred requires successful ERP send
- finalized/transferred normal back-transition is prohibited
- reopen is exceptional and governed only

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

# ============================================================
# 8. LOCK GOVERNANCE
# ============================================================

final_lock_principles:
- evaluation confirmation creates final lock
- normal objective editing is blocked after lock
- normal action plan editing is blocked after lock
- normal progress creation is blocked after lock
- normal evaluation editing is blocked after lock
- ERP status updates remain allowed only through controlled backend paths

reopen_principles:
- reopen is exceptional
- reopen is governance-controlled
- reopen must preserve prior confirmation history
- transferred reopen is stricter than finalized reopen
- reopen execution requires governed approval path

# ============================================================
# 9. PERMISSION PRINCIPLES
# ============================================================

permission_principles:
- permissions are role-based
- role checks are mandatory server-side
- company scope is mandatory server-side
- lock checks are mandatory server-side
- UI-only restriction is insufficient

role_summary:
objective_owner:
- create/update own unlocked objectives
- create action plans
- create progress logs
- create task/project/evidence/interview records

manager:
- create/update review schedules
- create review logs

evaluator:
- create/update evaluation draft
- confirm evaluation

HR_operator:
- ERP history visibility
- resend/export/reminder operational paths
- governed ERP-facing control

executive_viewer:
- read-only summary visibility only

department_template_admin:
- template and preset administration only

system_auditor:
- read-only governance visibility only

# ============================================================
# 10. API CONTRACTS
# ============================================================

API_contract_status:
exact request / response payloads are fixed.

major_API_groups:
- objective APIs
- template APIs
- action plan APIs
- progress APIs
- review schedule APIs
- review log APIs
- comment template APIs
- evaluation APIs
- calibration APIs
- interview memo APIs
- evidence reference APIs
- task/project link APIs
- KPI/executive summary APIs
- export/reminder APIs
- ERP history/resend APIs
- reopen governance APIs

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

first_backend_slice:
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
# 11. ERP OUTBOUND
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

ERP_outbound_event:
- mbo.evaluation.finalized.v1

payload_core:
- transmission envelope
- objective_snapshot
- evaluation_snapshot
- review_summary
- linkage_summary
- ERP_control

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

# ============================================================
# 13. DASHBOARD / KPI RULES
# ============================================================

dashboard_principles:
- execution-centered
- action-needed items separated from summary-only items
- alerts distinguished from reminders
- locked historical items not shown as editable work
- role-scoped and period-scoped counts

dashboard_core_widgets:
- total_objectives
- draft_objectives
- active_objectives
- in_review_objectives
- evaluation_drafted_objectives
- finalized_objectives
- transferred_objectives
- stale_progress_count
- overdue_review_count
- pending_evaluation_confirmation_count
- ERP_failure_count

KPI_rules:
- review_completion_rate
- evaluation_confirmation_rate
- ERP_success_rate
- average_progress_percent
- progress_distribution
- objective_status_distribution

# ============================================================
# 14. SQL / DATABASE STATUS
# ============================================================

database_status:
- table architecture fixed
- exact CREATE TABLE SQL fixed
- check constraints fixed
- indexes fixed
- helper views fixed
- updated_at trigger strategy fixed
- RLS direction fixed
- master/seed data fixed
- sample test data fixed
- executable quick-check SQL fixed

principal_SQL_files:
- 1200023_MBO_SQL_FULL_INTEGRATED.sql
- 1200025_MBO_SQL_TEST_DATA_SAMPLE_PACK.sql
- 1200029_MBO_SQL_EXECUTABLE_QUICKCHECK.sql

# ============================================================
# 15. IMPLEMENTATION STATUS
# ============================================================

implementation_status:
- backend task breakdown fixed
- frontend task breakdown fixed
- first-slice start pack fixed
- work instructions fixed
- progress ledgers fixed
- issue/deviation templates fixed
- wave control fixed
- acceptance runbook fixed
- restart packs fixed

implementation_principle:
Mbo should continue from implementation-first work,
not from redesign-first work.

recommended_first_slice:
backend:
- objective list/detail/create/update/activate
- action plan list/create
- progress log list/create
- dashboard summary

frontend:
- objective list
- objective create/edit
- objective detail
- action plan list/create
- progress update/history
- dashboard summary shell

# ============================================================
# 16. WAVE CONTROL
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

wave_rules:
- critical defects block promotion
- earlier-wave regression blocks promotion
- design deviation must be recorded before change
- do not weaken lock or reopen semantics

# ============================================================
# 17. ACCEPTANCE / PASS GATE
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

# ============================================================
# 18. RESTART / HANDOFF
# ============================================================

restart_principle:
Do not restart from concept design.
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
# 19. CURRENT CONCLUSION
# ============================================================

current_conclusion:
Mbo has reached a strong canonical-fixed,
implementation-ready state.

meaning:
- design-first expansion can stop here
- implementation-first continuation is appropriate
- future refinement should be issue-driven and additive

