# ============================================================
# PROJECT FLOW COMMON COMPONENT CANDIDATE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Extracts reusable common component candidates from ProjectFlow.

selection_principles:
- not project-management-specific only
- reusable across multiple operational applications
- stable responsibility boundary
- UI and domain reuse both allowed
- ERP direct coupling forbidden

common_component_candidate_groups:
- operational dashboard summary card set
- overdue and delay visibility component
- issue/risk list and severity emphasis component
- sync status and retry visibility component
- spreadsheet export request component
- progress report draft generation component
- read-only entitlement guard component
- multi-device parity layout policy component

candidate_details:

operational_dashboard_summary_card_set:
Reusable summary card block for counts,
delay indicators,
issue counts,
risk counts,
and sync counts.

overdue_and_delay_visibility_component:
Reusable visual and logic component
for overdue highlight,
delay day display,
and urgent-state emphasis.

issue_risk_list_and_severity_component:
Reusable list/table/card component
for issue and risk visibility,
severity emphasis,
status update entry point,
and exportable filtered view.

sync_status_and_retry_visibility_component:
Reusable operational integration component
for sync request list,
failure emphasis,
retryable state display,
and error detail drilldown.

spreadsheet_export_request_component:
Reusable export settings component
for target scope,
column selection,
masking options,
format selection,
and export history.

progress_report_draft_generation_component:
Reusable human-editable draft generation component
for quantitative summary,
qualitative draft,
approval state,
and external-use warning.

read_only_entitlement_guard_component:
Reusable feature guard component
for subscribed,
trial,
and unpaid_read_only behavior.

multi_device_parity_layout_policy_component:
Reusable policy and UI pattern set
for smartphone/PC same capability with layout-only differences.
