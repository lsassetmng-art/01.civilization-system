# ============================================================
# PROJECT FLOW AUTOMATION RULE SETTINGS SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
automation_rule_settings

purpose:
Configures lightweight automation rules.

main_components:
- rule list
- enable/disable toggle
- trigger selector
- target scope selector
- simple condition editor
- action selector
- save action

supported_triggers:
- overdue_task_detected
- delayed_milestone_detected
- high_risk_detected
- critical_issue_detected
- sync_failed
- report_review_pending

supported_actions:
- create_in_app_notification
- highlight_on_dashboard
- flag_for_manager_attention
- request_external_notification

ui_rules:
- editor must remain simple
- only lightweight actions should be selectable
- enabled/disabled state must be obvious
