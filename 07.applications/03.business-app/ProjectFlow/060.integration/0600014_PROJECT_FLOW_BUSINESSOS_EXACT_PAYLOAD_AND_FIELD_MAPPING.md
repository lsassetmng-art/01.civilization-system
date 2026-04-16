# ============================================================
# PROJECT FLOW BUSINESSOS EXACT PAYLOAD AND FIELD MAPPING
# ============================================================

status: canonical-exact
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Fixes exact request and response payload direction
for ProjectFlow mediated interaction through BusinessOS.

principles:
- ERP direct call from ProjectFlow is forbidden
- ProjectFlow talks to BusinessOS-facing mediated contracts
- payloads should separate local identifiers from ERP identifiers
- reference-only ERP truth must not be silently overwritten by local fields

# ============================================================
# 1. REQUEST: ERP PROJECT IMPORT
# ============================================================

request_name:
request_project_import

request_payload:
- request_id
- company_id
- project_scope_type
- target_project_id optional
- erp_project_code optional
- import_mode
- requested_by_user_id
- requested_at
- mapping_version
- locale optional

field_rules:
- target_project_id identifies a local target when updating an existing local record
- erp_project_code identifies ERP-side formal reference when known
- import_mode candidates:
  - initial_full_import
  - differential_import
  - reference_refresh

response_payload:
- request_id
- accepted
- mediated_status
- queued_at optional
- sync_request_id optional
- message optional

# ============================================================
# 2. REQUEST: ERP PROJECT EXPORT
# ============================================================

request_name:
request_project_export

request_payload:
- request_id
- company_id
- target_project_id
- export_scope
- export_reason optional
- requested_by_user_id
- requested_at
- mapping_version
- locale optional

field_rules:
- target_project_id is always local ProjectFlow project_id
- export_scope candidates:
  - project_header_only
  - approved_operational_update
  - allowed_reference_sync

response_payload:
- request_id
- accepted
- mediated_status
- queued_at optional
- sync_request_id optional
- message optional

# ============================================================
# 3. REQUEST: SYNC RETRY
# ============================================================

request_name:
request_sync_retry

request_payload:
- request_id
- company_id
- sync_request_id
- retry_reason optional
- requested_by_user_id
- requested_at

response_payload:
- request_id
- accepted
- mediated_status
- retry_request_registered
- message optional

# ============================================================
# 4. QUERY: SYNC STATUS
# ============================================================

request_name:
get_sync_status

request_payload:
- company_id
- sync_request_id optional
- target_project_id optional
- status_scope

status_scope_candidates:
- latest_for_project
- latest_for_request
- recent_for_company

response_payload:
- company_id
- status_scope
- sync_items

sync_items_fields:
- sync_request_id
- target_project_id optional
- sync_direction
- sync_type
- status
- retryable
- retry_count
- requested_at
- started_at optional
- finished_at optional
- error_code optional
- error_message optional

# ============================================================
# 5. QUERY: SYNC ERROR DETAIL
# ============================================================

request_name:
get_sync_error_detail

request_payload:
- company_id
- sync_request_id

response_payload:
- company_id
- sync_request_id
- status
- error_items

error_items_fields:
- target_entity_type
- target_entity_id optional
- field_name optional
- result_status
- error_code optional
- error_message optional
- retryable

# ============================================================
# 6. FIELD MAPPING INTERPRETATION
# ============================================================

mapping_rules:

projectflow_local_primary:
- project_id
- project_status
- planned_start_date
- planned_end_date
- actual_start_date
- actual_end_date
- progress_percent
- delay_days
- task_title
- task_description
- task_status
- milestone_name
- milestone_status
- issue_title
- risk_title
- work_date
- hours
- report_draft fields
- template fields
- proposal fields

erp_reference_primary:
- erp_project_code
- customer_id when ERP-linked
- budget_amount_view
- actual_cost_amount_view
- formal organization reference values

mixed_display_snapshot:
- customer_name_snapshot
- manager_name_snapshot
- owner_name_snapshot

important_rule:
Snapshots are display convenience only.
They do not replace formal truth ownership.
