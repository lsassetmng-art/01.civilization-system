# ============================================================
# MBO FINAL LOCK RUNTIME
# ============================================================

status: canonical
application: Mbo
layer: runtime
owner: Boss
prepared_by: Zero

purpose:
Defines final lock behavior after evaluation confirmation.

lock_start_condition:
- evaluation has been confirmed
- final_lock_flag is true
- objective state has moved to finalized

locked_entities_and_fields:

  objective:
    locked_fields:
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

  action_plan:
    locked_fields:
      - step_title
      - step_description
      - owner_user_id
      - planned_start_at
      - planned_end_at
      - completion_percent
      - status

  progress_log:
    locked_behavior:
      - new normal progress log creation prohibited
      - existing progress logs remain readable
      - existing progress logs are append-only historical records

  evaluation:
    locked_fields:
      - evaluation_score
      - evaluation_comment

allowed_after_lock:
- read visibility according to role
- ERP transmission status updates
- ERP resend job creation by authorized role
- audit/history visibility
- governed calibration record creation if policy allows
- governed memo creation only if explicitly allowed later

prohibited_after_lock:
- normal objective editing
- normal action plan editing
- normal progress updates
- normal evaluation edits

