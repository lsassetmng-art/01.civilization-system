# ============================================================
# MBO BACKEND ENDPOINT START ORDER
# ============================================================

status: canonical
application: Mbo
layer: implementation
owner: Boss
prepared_by: Zero

start_order:
1:
  endpoint: GET /api/mbo/objectives
  reason:
    - unlocks objective list screen first
    - easiest read path using list view

2:
  endpoint: GET /api/mbo/objectives/{objective_id}
  reason:
    - unlocks objective detail screen
    - central read path for later expansion

3:
  endpoint: POST /api/mbo/objectives
  reason:
    - enables first create flow

4:
  endpoint: PUT /api/mbo/objectives/{objective_id}
  reason:
    - enables edit flow before activation

5:
  endpoint: POST /api/mbo/objectives/{objective_id}/activate
  reason:
    - proves state transition and validation

6:
  endpoint: GET /api/mbo/objectives/{objective_id}/action-plans
  reason:
    - supports detail expansion

7:
  endpoint: POST /api/mbo/objectives/{objective_id}/action-plans
  reason:
    - supports execution planning

8:
  endpoint: GET /api/mbo/objectives/{objective_id}/progress-logs
  reason:
    - supports history display

9:
  endpoint: POST /api/mbo/objectives/{objective_id}/progress-logs
  reason:
    - proves active execution write path

10:
  endpoint: GET /api/mbo/kpi-dashboard
  reason:
    - provides dashboard summary shell data
