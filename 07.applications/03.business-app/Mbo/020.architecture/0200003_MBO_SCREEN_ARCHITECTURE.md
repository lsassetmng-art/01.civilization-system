# ============================================================
# MBO SCREEN ARCHITECTURE
# ============================================================

status: canonical
application: Mbo
layer: architecture
owner: Boss
prepared_by: Zero

screen_list:
- dashboard
- objective_list
- objective_detail
- objective_create_edit
- action_plan_list
- action_plan_edit
- progress_update
- progress_history
- review_schedule
- review_log
- evaluation_draft
- evaluation_confirm
- sharing_status
- ERP_history

screen_purposes:
dashboard:
- period summary
- due reviews
- overdue updates
- locked evaluations
- ERP send status

objective_list:
- objective search
- objective filter
- objective status overview

objective_detail:
- full objective view
- target and criteria review
- linked actions and logs review

objective_create_edit:
- create draft objective
- edit non-finalized objective

action_plan_list:
- show steps by objective

action_plan_edit:
- create and update action steps

progress_update:
- register latest progress state

progress_history:
- view chronological update history

review_schedule:
- manage review timings

review_log:
- store review comments and results

evaluation_draft:
- prepare scoring and comments

evaluation_confirm:
- confirm final record and lock

sharing_status:
- show task/project linkage status

ERP_history:
- show outbound send history and resend status
