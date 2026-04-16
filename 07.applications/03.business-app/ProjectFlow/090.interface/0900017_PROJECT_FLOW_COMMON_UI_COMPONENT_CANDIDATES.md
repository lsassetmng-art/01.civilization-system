# ============================================================
# PROJECT FLOW COMMON UI COMPONENT CANDIDATES
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines reusable UI-level component candidates.

ui_component_candidates:
- summary_card_grid
- overdue_badge
- delay_day_chip
- severity_badge
- risk_score_badge
- sync_status_badge
- retryable_state_badge
- export_action_panel
- report_draft_editor_panel
- read_only_mode_banner
- device_parity_action_bar

component_notes:

summary_card_grid:
Reusable for dashboard-style applications.

overdue_badge:
Reusable for task,
schedule,
approval,
and workload applications.

delay_day_chip:
Reusable for project,
task,
milestone,
shipment,
and collection-style apps.

severity_badge:
Reusable for issue,
risk,
incident,
approval escalation,
and support queue applications.

risk_score_badge:
Reusable where probability/impact or score is shown.

sync_status_badge:
Reusable for any app using shared BusinessOS integration path.

retryable_state_badge:
Reusable where retryable failure visibility is needed.

export_action_panel:
Reusable for xlsx/csv output applications.

report_draft_editor_panel:
Reusable for human-edited draft output flows.

read_only_mode_banner:
Reusable for monthly-use application subscription control.

device_parity_action_bar:
Reusable for smartphone/PC same capability layout adaptation.
