# ============================================================
# PROJECT FLOW API CONTRACT
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

projectflow_to_shared_businessos:
- request_project_import
- request_project_export
- request_sync_retry
- get_sync_status
- get_sync_error_detail

shared_businessos_to_erp_examples:
- GET /erp/projects
- GET /erp/projects/{erp_project_code}
- GET /erp/customers
- GET /erp/project-costs
- POST /erp/project-progress
- POST /erp/project-milestones
- POST /erp/project-time-actuals
- POST /erp/project-completion

rules:
- contract must be versioned
- reject reason must be machine-readable
- partial failure must identify row-level failure
