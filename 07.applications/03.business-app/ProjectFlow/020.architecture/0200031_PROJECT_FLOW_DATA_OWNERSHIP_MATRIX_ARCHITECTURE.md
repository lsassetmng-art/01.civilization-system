# ============================================================
# PROJECT FLOW DATA OWNERSHIP MATRIX ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines field-level and data-level ownership matrix guidance.

ownership_categories:
- projectflow_local_truth
- erp_formal_truth
- mediated_status_context
- common_component_display_only
- localized_display_only

architecture_rules:
- one field should have one primary truth owner
- ProjectFlow may display ERP-owned values without re-owning them
- mediated status context remains boundary-derived,
  not local truth replacement
- common components may display or shell-wrap data,
  but do not become truth owner
- localized labels are display-only,
  not business-truth data
