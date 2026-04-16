# ============================================================
# PROJECT AUTOMATION RULE MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- automation_rule_id
- company_id
- rule_name
- trigger_type
- target_scope
- condition_json
- action_json
- is_enabled
- created_at
- updated_at

trigger_type_candidates:
- overdue_task_detected
- high_risk_detected
- sync_failed
- milestone_delayed
