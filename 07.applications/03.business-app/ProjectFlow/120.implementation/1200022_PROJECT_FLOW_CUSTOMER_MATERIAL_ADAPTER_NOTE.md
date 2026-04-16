# ============================================================
# PROJECT FLOW CUSTOMER MATERIAL ADAPTER NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines per-material adapter responsibilities.

material_adapters:
- customer_schedule_adapter
- progress_report_adapter
- issue_list_adapter
- risk_list_adapter
- decision_note_adapter
- follow_up_action_list_adapter

rules:
- each material adapter may reuse shared project source data
- each adapter must remain independently exportable
- customer-facing wording adjustments must remain supported where applicable
