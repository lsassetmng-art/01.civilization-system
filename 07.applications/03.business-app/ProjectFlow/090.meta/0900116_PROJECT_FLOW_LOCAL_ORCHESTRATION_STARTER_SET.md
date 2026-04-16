# ============================================================
# PROJECT FLOW LOCAL ORCHESTRATION STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a starter set of local orchestration targets
for major ProjectFlow screens.

starter_set:

dashboard:
- shared_components_used:
  - dashboard summary shell candidate
  - sync visibility shell candidate
  - read-only entitlement guard shell candidate
- local_sections_used:
  - ProjectFlow progress summary
  - ProjectFlow delay/risk grouping
  - ProjectFlow quick action arrangement
- orchestration_focus:
  - summary order
  - local action routing
  - local metric grouping

project_detail:
- shared_components_used:
  - device parity layout shell candidate
  - read-only entitlement guard shell candidate
- local_sections_used:
  - project summary grid
  - tab routing
  - local action area
- orchestration_focus:
  - tab order
  - local state binding
  - ERP-reference versus local-edit separation

customer_material_screen:
- shared_components_used:
  - customer material layout shell candidate
  - export shell candidate
  - multilingual label shell candidate
- local_sections_used:
  - material-specific preview body
  - wording adjustment area
  - ProjectFlow review-aware export flow
- orchestration_focus:
  - material type switching
  - wording adjustment order
  - review-state visibility

sync_status_screen:
- shared_components_used:
  - sync visibility shell candidate
  - notification shell candidate if official
- local_sections_used:
  - ProjectFlow sync scope filters
  - ProjectFlow retry action placement
- orchestration_focus:
  - sync grouping
  - retry route placement
  - local error interpretation surface

export_report_screen:
- shared_components_used:
  - export shell candidate
  - multilingual label shell candidate
  - read-only entitlement guard shell candidate
- local_sections_used:
  - dataset selector
  - report draft editor
  - ProjectFlow-specific output controls
- orchestration_focus:
  - output selection order
  - local edit area placement
  - review-aware export routing
