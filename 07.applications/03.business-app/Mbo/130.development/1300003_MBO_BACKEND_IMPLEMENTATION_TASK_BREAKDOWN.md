# ============================================================
# MBO BACKEND IMPLEMENTATION TASK BREAKDOWN
# ============================================================

status: canonical
application: Mbo
layer: development
owner: Boss
prepared_by: Zero

purpose:
Defines backend implementation task breakdown
based on the fixed Mbo design and SQL packs.

backend_phases:

  phase_01_foundation:
    tasks:
      - establish backend project/module boundary
      - wire database connection and migration execution path
      - load app_mbo integrated SQL in review environment
      - load seed/master data
      - load sample test data
      - run executable quick-check SQL
    done_when:
      - schema exists
      - tables/views/triggers/RLS exist
      - sample data loads cleanly
      - quick-check output is reviewable

  phase_02_objective_core_APIs:
    tasks:
      - objective list API
      - objective detail API
      - create objective API
      - update objective API
      - activate objective API
      - objective duplicate API
      - objective template list/apply APIs
    done_when:
      - objective CRUD flow works end to end
      - template-to-draft creation works
      - locked records reject normal edit path

  phase_03_action_execution_APIs:
    tasks:
      - action plan list/create/update APIs
      - progress log list/create APIs
      - evidence reference list/attach APIs
      - task link list/attach APIs
      - project link list/attach APIs
      - interview memo list/create APIs
    done_when:
      - objective execution records are writable
      - latest progress helper views support reads
      - linkage summary is visible from API side

  phase_04_review_and_evaluation_APIs:
    tasks:
      - review schedule list/create/update APIs
      - bulk review schedule API
      - review log list/create APIs
      - manager comment template list/create/update APIs
      - evaluation get/save draft APIs
      - evaluation confirm API
      - calibration list/create APIs
    done_when:
      - review workflow is operable
      - evaluation confirmation creates final lock
      - post-lock normal write paths are blocked

  phase_05_dashboard_and_job_APIs:
    tasks:
      - dashboard summary API
      - KPI dashboard API
      - executive summary API
      - export job list/create APIs
      - reminder batch list/create APIs
    done_when:
      - dashboard counts match SQL helper views
      - job APIs create auditable records
      - executive summary remains read-only

  phase_06_ERP_and_governance_APIs:
    tasks:
      - ERP history list API
      - ERP resend job list/create APIs
      - ERP outbound payload builder
      - ERP transmission execution hook
      - reopen request list/create APIs
      - reopen approval/create-read APIs
      - reopen execution APIs
      - ERP impact note APIs
    done_when:
      - ERP failure path is visible
      - resend path is auditable
      - reopen is governed and history-preserving

backend_cross_cutting_tasks:
- auth and role mapping
- request validation
- server-side lock checks
- server-side state transition checks
- logging and audit correlation
- pagination and sort rules
- error envelope consistency

backend_priority_first_slice:
- objective list
- objective detail
- create objective
- update objective
- activate objective
- action plan list/create
- progress log list/create

backend_priority_second_slice:
- review schedule/log
- evaluation draft/confirm
- dashboard summary
- ERP history

backend_priority_third_slice:
- templates
- export/reminder jobs
- reopen governance
- resend governance
