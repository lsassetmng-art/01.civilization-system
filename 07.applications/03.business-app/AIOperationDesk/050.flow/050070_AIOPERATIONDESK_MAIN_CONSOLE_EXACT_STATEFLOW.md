# ============================================================
# AI OPERATION DESK MAIN CONSOLE EXACT STATEFLOW
# ============================================================

status: exact-fixed
app: AIOperationDesk
layer: flow
owner: Boss
prepared_by: Zero

entry_state:
- console_home_dashboard

states:
1. console_home_dashboard
2. queue_board
3. review_inbox
4. approval_inbox
5. failure_retry_center
6. audit_timeline
7. summary_center
8. supported_app_registry_manager
9. notification_settings
10. resident_surface_monitor
11. work_order_detail
12. return_to_dashboard

stateflow:

console_home_dashboard:
- transitions:
  - open_queue -> queue_board
  - open_review -> review_inbox
  - open_approval -> approval_inbox
  - open_failure -> failure_retry_center
  - open_audit -> audit_timeline
  - open_summary -> summary_center
  - open_registry -> supported_app_registry_manager
  - open_notifications -> notification_settings
  - open_resident_monitor -> resident_surface_monitor

queue_board:
- transitions:
  - open_work_order_detail -> work_order_detail
  - back -> console_home_dashboard

review_inbox:
- transitions:
  - open_work_order_detail -> work_order_detail
  - decide_review -> review_inbox
  - back -> console_home_dashboard

approval_inbox:
- transitions:
  - open_work_order_detail -> work_order_detail
  - decide_approval -> approval_inbox
  - back -> console_home_dashboard

failure_retry_center:
- transitions:
  - open_work_order_detail -> work_order_detail
  - schedule_retry -> failure_retry_center
  - back -> console_home_dashboard

audit_timeline:
- transitions:
  - open_work_order_detail -> work_order_detail
  - back -> console_home_dashboard

summary_center:
- transitions:
  - open_work_order_detail -> work_order_detail
  - back -> console_home_dashboard

supported_app_registry_manager:
- transitions:
  - open_supported_app_detail -> supported_app_registry_manager
  - back -> console_home_dashboard

notification_settings:
- transitions:
  - save_settings -> notification_settings
  - back -> console_home_dashboard

resident_surface_monitor:
- transitions:
  - open_context_detail -> resident_surface_monitor
  - back -> console_home_dashboard

work_order_detail:
- transitions:
  - back_queue -> queue_board
  - back_review -> review_inbox
  - back_approval -> approval_inbox
  - back_failure -> failure_retry_center
  - back_audit -> audit_timeline
  - back_summary -> summary_center
  - back_dashboard -> console_home_dashboard

rules:
- dashboard is default entry
- main console is PC-first heavy operation surface
- resident surfaces remain separate lightweight fronts
