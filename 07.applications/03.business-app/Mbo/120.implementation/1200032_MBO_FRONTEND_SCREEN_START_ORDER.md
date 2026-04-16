# ============================================================
# MBO FRONTEND SCREEN START ORDER
# ============================================================

status: canonical
application: Mbo
layer: implementation
owner: Boss
prepared_by: Zero

start_order:
1:
  screen: objective_list
  reason:
    - easiest primary entry
    - validates list API and role scope

2:
  screen: objective_create_edit
  reason:
    - unlocks first write flow

3:
  screen: objective_detail
  reason:
    - central navigation hub for later features

4:
  screen: action_plan_list_edit
  reason:
    - adds execution planning value quickly

5:
  screen: progress_update_history
  reason:
    - adds execution tracking value quickly

6:
  screen: dashboard_summary_shell
  reason:
    - useful after core data paths already exist
