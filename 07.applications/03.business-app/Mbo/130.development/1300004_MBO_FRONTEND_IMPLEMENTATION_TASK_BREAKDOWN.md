# ============================================================
# MBO FRONTEND IMPLEMENTATION TASK BREAKDOWN
# ============================================================

status: canonical
application: Mbo
layer: development
owner: Boss
prepared_by: Zero

purpose:
Defines frontend implementation task breakdown
for iphone, android, pc, and tablet compatible delivery.

frontend_phases:

  phase_01_foundation:
    tasks:
      - establish app shell and navigation
      - establish multilingual resource structure
      - establish responsive layout rules for iphone/android/pc/tablet
      - establish authenticated session and role-aware screen gating
      - establish API client base and error envelope handling
    done_when:
      - shell loads
      - navigation works
      - resource switching works
      - responsive layout baseline exists

  phase_02_core_objective_screens:
    tasks:
      - dashboard summary shell
      - objective list screen
      - objective create/edit screen
      - objective detail screen
      - objective template select screen
    done_when:
      - user can create and activate objective
      - role-visible list/detail screens work
      - template selection to draft objective works

  phase_03_execution_screens:
    tasks:
      - action plan list/edit screens
      - progress update screen
      - progress history screen
      - evidence reference picker
      - task link picker
      - project link picker
      - interview memo screen
    done_when:
      - user can maintain execution records
      - linkage and evidence can be attached
      - latest execution state is visible from detail page

  phase_04_review_and_evaluation_screens:
    tasks:
      - review schedule screen
      - bulk review schedule screen
      - review log screen
      - manager comment template admin screen
      - evaluation draft screen
      - evaluation confirm screen
      - evaluation calibration screen
    done_when:
      - manager can operate review flow
      - evaluator can confirm evaluation
      - lock state is visibly enforced

  phase_05_summary_and_job_screens:
    tasks:
      - KPI dashboard screen
      - executive summary screen
      - aggregation export screen
      - reminder batch send screen
      - ERP history screen
      - ERP resend control screen
    done_when:
      - aggregates and job controls are visible
      - ERP failure path is operable for authorized roles
      - executive summary remains read-only

  phase_06_governance_exception_screens:
    tasks:
      - reopen request screen
      - reopen queue screen
      - reopen approval view
      - reopen execution view
      - ERP impact note view
    done_when:
      - governed exception flow is operable
      - normal edit path is clearly separated from reopen path

frontend_cross_cutting_tasks:
- lock badge and disabled-state explanation
- alert vs reminder visual distinction
- overdue state visual distinction
- pagination/filter/sort consistency
- loading/empty/error states
- accessibility and readable density
- multi-device layout verification

frontend_priority_first_slice:
- objective list
- objective create/edit
- objective detail
- action plan list/edit
- progress update/history

frontend_priority_second_slice:
- dashboard summary
- review schedule/log
- evaluation draft/confirm

frontend_priority_third_slice:
- KPI dashboard
- ERP history/resend
- templates/admin surfaces
- reopen governance screens
