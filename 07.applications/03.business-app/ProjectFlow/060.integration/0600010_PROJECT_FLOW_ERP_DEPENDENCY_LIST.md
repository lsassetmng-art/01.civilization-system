# ============================================================
# PROJECT FLOW ERP DEPENDENCY LIST
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides an explicit ERP dependency list.

dependency_items:

formal_project_reference:
- required: conditional
- local_usage: display and alignment
- truth_owner: ERP
- access_path: mediated through BusinessOS

formal_customer_reference:
- required: conditional
- local_usage: display and explanation alignment
- truth_owner: ERP
- access_path: mediated through BusinessOS

formal_budget_reference:
- required: conditional
- local_usage: view-only reference where applicable
- truth_owner: ERP
- access_path: mediated through BusinessOS

formal_org_reference:
- required: conditional
- local_usage: assignment and reference context
- truth_owner: ERP or approved enterprise source
- access_path: mediated through BusinessOS

erp_project_import:
- required: conditional
- local_usage: alignment and seeded local operation
- truth_owner: ERP
- access_path: mediated through BusinessOS

erp_project_export:
- required: conditional
- local_usage: approved outbound projectflow-to-ERP path
- truth_owner: ERP after accepted update
- access_path: mediated through BusinessOS

non_dependency_examples:
- customer-facing schedule generation
- progress report draft generation
- issue list generation
- risk list generation
- decision note material generation
- follow-up action list generation
- multilingual label resolution
- local read-only entitlement behavior
