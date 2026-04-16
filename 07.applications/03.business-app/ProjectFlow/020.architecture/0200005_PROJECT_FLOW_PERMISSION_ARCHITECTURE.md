# ============================================================
# PROJECT FLOW PERMISSION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

roles:
- project_admin
- project_manager
- project_member
- project_viewer
- sync_operator
- erp_reference_viewer

permission_summary:
project_admin:
- full project edit
- mapping view
- sync retry
- archive control

project_manager:
- project edit
- task edit
- milestone update
- issue/risk update
- progress update

project_member:
- assigned task update
- work log entry
- issue registration
- comment entry

project_viewer:
- read only
