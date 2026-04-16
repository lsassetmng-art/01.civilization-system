# ============================================================
# MBO MODEL OVERVIEW
# ============================================================

status: canonical
application: Mbo
layer: model
owner: Boss
prepared_by: Zero

core_models:
- period
- objective
- action_plan
- progress_log
- review_schedule
- review_log
- evaluation
- objective_link
- ERP_transmission_history

model_principles:
- objective is the primary business record
- action plan belongs to one objective
- progress logs are append-only
- review logs are append-only
- evaluation confirmation creates lock state
