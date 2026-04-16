# ============================================================
# MBO BACKEND PROGRESS LEDGER
# ============================================================

status: canonical
application: Mbo
layer: development
owner: Boss
prepared_by: Zero

purpose:
Provides a day-to-day backend progress ledger
for implementation execution.

ledger_items:

  - item_id: BE-L01
    area: objective_list_api
    status: not_started
    target_endpoint: GET /api/mbo/objectives
    done_definition:
      - endpoint works
      - pagination works
      - role scope works
      - company scope works

  - item_id: BE-L02
    area: objective_detail_api
    status: not_started
    target_endpoint: GET /api/mbo/objectives/{objective_id}
    done_definition:
      - detail fields match contract
      - invisible records are hidden

  - item_id: BE-L03
    area: create_objective_api
    status: not_started
    target_endpoint: POST /api/mbo/objectives
    done_definition:
      - valid draft create works
      - invalid request is rejected

  - item_id: BE-L04
    area: update_objective_api
    status: not_started
    target_endpoint: PUT /api/mbo/objectives/{objective_id}
    done_definition:
      - unlocked update works
      - locked update fails

  - item_id: BE-L05
    area: activate_objective_api
    status: not_started
    target_endpoint: POST /api/mbo/objectives/{objective_id}/activate
    done_definition:
      - draft to active transition works
      - invalid transition fails

  - item_id: BE-L06
    area: action_plan_list_api
    status: not_started
    target_endpoint: GET /api/mbo/objectives/{objective_id}/action-plans
    done_definition:
      - ordered rows return correctly

  - item_id: BE-L07
    area: action_plan_create_api
    status: not_started
    target_endpoint: POST /api/mbo/objectives/{objective_id}/action-plans
    done_definition:
      - create works
      - duplicate step_no fails
      - locked objective fails

  - item_id: BE-L08
    area: progress_log_list_api
    status: not_started
    target_endpoint: GET /api/mbo/objectives/{objective_id}/progress-logs
    done_definition:
      - newest-first history works

  - item_id: BE-L09
    area: progress_log_create_api
    status: not_started
    target_endpoint: POST /api/mbo/objectives/{objective_id}/progress-logs
    done_definition:
      - unlocked objective accepts
      - locked objective rejects
      - invalid range rejects

  - item_id: BE-L10
    area: dashboard_summary_api
    status: not_started
    target_endpoint: GET /api/mbo/kpi-dashboard
    done_definition:
      - scoped counts return correctly

status_candidates:
- not_started
- in_progress
- blocked
- review_ready
- done

update_rule:
Each item should be updated only with
evidence-backed implementation progress.
