# ============================================================
# PROJECT FLOW API EXACT CONTRACT DRAFT
# ============================================================

status: draft
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

pending_exact_contract:
- request_project_import payload
- request_project_export payload
- get_sync_status response
- get_sync_error_detail response
