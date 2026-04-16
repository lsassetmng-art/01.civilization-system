# ============================================================
# PROJECT FLOW SCREEN TO PACKAGE MAPPING LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps major ProjectFlow screens
to implementation-start planning packages.

screen_to_package_mapping:

dashboard:
- primary_packages:
  - PF-IMP-001
  - PF-IMP-002
- secondary_packages:
  - PF-IMP-005
- orchestration_reference:
  - 0900116_PROJECT_FLOW_LOCAL_ORCHESTRATION_STARTER_SET.md

project_detail:
- primary_packages:
  - PF-IMP-001
  - PF-IMP-002
- secondary_packages:
  - PF-IMP-003
- orchestration_reference:
  - 0900116_PROJECT_FLOW_LOCAL_ORCHESTRATION_STARTER_SET.md

customer_material_screen:
- primary_packages:
  - PF-IMP-004
- secondary_packages:
  - PF-IMP-002
  - PF-IMP-003
- orchestration_reference:
  - 0900116_PROJECT_FLOW_LOCAL_ORCHESTRATION_STARTER_SET.md

sync_status_screen:
- primary_packages:
  - PF-IMP-005
- secondary_packages:
  - PF-IMP-003
- orchestration_reference:
  - 0900116_PROJECT_FLOW_LOCAL_ORCHESTRATION_STARTER_SET.md

export_report_screen:
- primary_packages:
  - PF-IMP-004
- secondary_packages:
  - PF-IMP-003
  - PF-IMP-005
- orchestration_reference:
  - 0900116_PROJECT_FLOW_LOCAL_ORCHESTRATION_STARTER_SET.md

important_rule:
One screen may depend on multiple planning packages.
Primary packages define the earliest planning owner.
