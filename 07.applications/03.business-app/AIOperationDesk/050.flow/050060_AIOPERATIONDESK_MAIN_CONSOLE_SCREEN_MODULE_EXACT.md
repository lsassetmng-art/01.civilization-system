# ============================================================
# AI OPERATION DESK MAIN CONSOLE SCREEN MODULE EXACT
# ============================================================

status: exact-fixed
app: AIOperationDesk
layer: flow
owner: Boss
prepared_by: Zero

purpose:
Define the exact main console screen modules for PC-first operation.

primary_surfaces:
- dashboard
- queue board
- review inbox
- approval inbox
- failure and retry center
- audit timeline
- summary center
- supported app registry manager
- notification settings
- resident surface monitor

dashboard_modules:
- workload summary cards
- review pending summary
- approval pending summary
- running jobs summary
- failed jobs summary
- latest summary batch card

queue_board_modules:
- waiting trigger bucket
- ready bucket
- running bucket
- completed recent bucket
- failed bucket
- filter bar
- search bar
- work order detail drawer

review_inbox_modules:
- review pending list
- review reason chip
- impacted app chip
- detail preview
- approve / return / reject actions

approval_inbox_modules:
- approval pending list
- approval reason chip
- risk class chip
- detail preview
- approve / return / reject actions

failure_retry_center_modules:
- failure list
- retryable flag
- likely cause summary
- retry schedule action
- escalation suggestion
- related audit view

audit_timeline_modules:
- event timeline
- actor type filter
- work order link
- event detail drawer

summary_center_modules:
- execution summary tab
- review summary tab
- failure summary tab
- output summary tab
- audit digest tab

supported_app_registry_manager_modules:
- supported app list
- task type list
- QA scope list
- write surface list
- onboarding status
- common error dictionary
- operation guide dictionary

notification_settings_modules:
- LINE destination setting
- event toggles
- active flag
- recent delivery result

resident_surface_monitor_modules:
- ERP resident activity
- Builder resident activity
- recent context snapshot list
- surface-origin request counts

device_adaptation:
- PC:
  - full multi-pane layout
- tablet:
  - split-view capable
- smartphone:
  - only light monitoring and light decisions, not primary console workflow
