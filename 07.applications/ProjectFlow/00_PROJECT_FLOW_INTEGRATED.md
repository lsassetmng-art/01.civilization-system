# ============================================================
# PROJECT FLOW OVERVIEW
# ============================================================

status: canonical
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
ProjectFlow is a project execution front for daily operational use.

summary:
ProjectFlow manages project execution,
task progress,
milestones,
issues,
risks,
time entry,
member workload,
and ERP synchronization.

positioning:
ProjectFlow is not the full ERP.
It is a field operation front that cooperates with ERP
through shared BusinessOS integration capability.

core_formula:
ProjectFlow
=
project execution
+ task management
+ progress tracking
+ issue/risk management
+ workload view
+ ERP import/export orchestration

erp_boundary:
ProjectFlow must not own full ERP transmission logic.
ERP integration is not direct application-local integration.
It is a shared BusinessOS-controlled integration path.

source_of_truth:
ERP owns:
- official project code
- customer
- contract
- formal budget
- formal actual cost
- billing and sales
- formal organization references

ProjectFlow owns:
- task execution
- issue
- risk
- milestone operation
- work logs
- operational comments
- daily progress visibility


# ============================================================
# PROJECT FLOW RULES INDEX
# ============================================================

status: canonical
layer: rules
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 0000000_PROJECT_FLOW_RULES_INDEX.md
- 0000001_PROJECT_FLOW_RULES_OVERVIEW.md
- 0000002_PROJECT_FLOW_DOCUMENT_RULE.md

# ============================================================
# PROJECT FLOW RULES OVERVIEW
# ============================================================

status: canonical
layer: rules
application: ProjectFlow
owner: Boss
prepared_by: Zero

rules:
- design is architecture-first
- source of truth must be explicit
- ERP integration must be shared-BusinessOS-based
- protected ERP fields must not be locally overwritten
- index and overview files must exist at layer level
- destructive delete should be avoided

# ============================================================
# PROJECT FLOW DOCUMENT RULE
# ============================================================

status: canonical
layer: rules
application: ProjectFlow
owner: Boss
prepared_by: Zero

document_rules:
- use canonical wording
- keep role boundaries explicit
- separate ERP truth from local truth
- define editability and auditability


# ============================================================
# PROJECT FLOW CONSTITUTION INDEX
# ============================================================

status: canonical
layer: constitution
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 0100000_PROJECT_FLOW_CONSTITUTION_INDEX.md
- 0100001_PROJECT_FLOW_CONSTITUTION_OVERVIEW.md
- 0100002_PROJECT_FLOW_APPLICATION_DEFINITION.md
- 0100003_PROJECT_FLOW_SCOPE_CONSTITUTION.md

# ============================================================
# PROJECT FLOW CONSTITUTION OVERVIEW
# ============================================================

status: canonical
layer: constitution
application: ProjectFlow
owner: Boss
prepared_by: Zero

constitutional_role:
ProjectFlow exists to make project execution easy to operate
without replacing ERP formal authority.

constitutional_principles:
- field usability is mandatory
- ERP authority must be preserved
- project visibility is mandatory
- issue and risk visibility is mandatory
- sync must be auditable
- silent corruption is forbidden

# ============================================================
# PROJECT FLOW APPLICATION DEFINITION
# ============================================================

status: canonical
layer: constitution
application: ProjectFlow
owner: Boss
prepared_by: Zero

definition:
ProjectFlow is a project management application
that imports formal project references from ERP,
supports day-to-day execution,
and returns selected operational results through shared BusinessOS integration.

included_capabilities:
- project list
- project detail
- task management
- milestone management
- issue management
- risk management
- work log and time entry
- workload visibility
- import status view
- export status view
- sync retry
- dashboard and alerts

excluded_capabilities:
- full accounting
- final contract authority
- billing authority
- payroll authority

# ============================================================
# PROJECT FLOW SCOPE CONSTITUTION
# ============================================================

status: canonical
layer: constitution
application: ProjectFlow
owner: Boss
prepared_by: Zero

in_scope:
- project execution control
- task and member coordination
- progress tracking
- issue/risk handling
- ERP project intake
- selected outbound operational publication

out_of_scope:
- ERP replacement
- contract authoring
- billing ownership
- accounting close


# ============================================================
# PROJECT FLOW ARCHITECTURE INDEX
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 0200000_PROJECT_FLOW_ARCHITECTURE_INDEX.md
- 0200001_PROJECT_FLOW_ARCHITECTURE_OVERVIEW.md
- 0200002_PROJECT_FLOW_ARCHITECTURE.md
- 0200003_PROJECT_FLOW_ERP_BOUNDARY_ARCHITECTURE.md
- 0200004_PROJECT_FLOW_SYNC_CONFLICT_ARCHITECTURE.md
- 0200005_PROJECT_FLOW_PERMISSION_ARCHITECTURE.md
- 0200006_PROJECT_FLOW_SCREEN_ARCHITECTURE.md

# ============================================================
# PROJECT FLOW ARCHITECTURE OVERVIEW
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

major_components:
- dashboard
- project registry
- task engine
- milestone engine
- issue/risk engine
- time entry engine
- sync orchestration UI
- notification engine
- permission guard
- shared BusinessOS integration boundary

# ============================================================
# PROJECT FLOW ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

architecture_style:
Operational front with explicit integration boundary.

modules:
1. dashboard module
2. project module
3. task module
4. milestone module
5. issue/risk module
6. time entry module
7. sync module
8. notification module
9. permission module
10. integration request module

design_rules:
- ERP-owned fields must remain separable
- local operational fields must remain editable by role
- import must not overwrite protected local fields
- export must only use mapped outbound fields
- conflict state must be explicit

# ============================================================
# PROJECT FLOW ERP BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

boundary_rule:
ProjectFlow must not own full ERP transmission logic.

path_inbound:
ERP
-> shared BusinessOS ERP integration capability
-> ProjectFlow intake/update view

path_outbound:
ProjectFlow publication request
-> shared BusinessOS ERP integration capability
-> ERP

shared_businessos_responsibility:
- company context attachment
- permission and publish guard
- payload mapping
- transmission execution
- result normalization
- audit logging
- retry control

projectflow_responsibility:
- request issuance
- target selection
- UI display
- sync state display
- error display
- retry action

# ============================================================
# PROJECT FLOW SYNC CONFLICT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

conflict_types:
- same field modified on both sides
- ERP protected field local edit attempt
- missing ERP reference
- stale outbound payload
- deleted upstream project reference

principles:
- ERP-owned fields prefer ERP
- local-owned fields prefer ProjectFlow
- destructive overwrite is forbidden without rule
- unresolved conflict must surface in UI

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

# ============================================================
# PROJECT FLOW SCREEN ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

screens:
- dashboard
- project list
- project detail
- task list
- task detail
- milestone view
- issue/risk board
- work log entry
- workload view
- ERP import status
- ERP export status
- sync error review
- settings


# ============================================================
# PROJECT FLOW MODEL INDEX
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 0300000_PROJECT_FLOW_MODEL_INDEX.md
- 0300001_PROJECT_FLOW_MODEL_OVERVIEW.md
- 0300002_PROJECT_MODEL.md
- 0300003_PROJECT_TASK_MODEL.md
- 0300004_PROJECT_MILESTONE_MODEL.md
- 0300005_PROJECT_ISSUE_MODEL.md
- 0300006_PROJECT_RISK_MODEL.md
- 0300007_PROJECT_TIME_ENTRY_MODEL.md
- 0300008_PROJECT_SYNC_REQUEST_MODEL.md
- 0300009_PROJECT_SYNC_LOG_MODEL.md

# ============================================================
# PROJECT FLOW MODEL OVERVIEW
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

models:
- project
- project_task
- project_milestone
- project_issue
- project_risk
- project_time_entry
- project_sync_request
- project_sync_log

# ============================================================
# PROJECT MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- project_id
- erp_project_code
- project_name
- project_status
- project_type
- customer_id
- customer_name_snapshot
- project_manager_id
- planned_start_date
- planned_end_date
- actual_start_date
- actual_end_date
- progress_percent
- delay_days
- budget_amount_view
- actual_cost_amount_view
- priority
- health_status
- sync_state
- last_imported_at
- last_exported_at
- created_at
- updated_at

ownership_notes:
- erp_project_code is ERP-owned
- budget_amount_view is ERP-owned
- progress_percent may be mapped outbound by policy

# ============================================================
# PROJECT TASK MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- task_id
- project_id
- parent_task_id
- task_title
- task_description
- assignee_id
- status
- priority
- planned_start_date
- planned_end_date
- actual_start_date
- actual_end_date
- progress_percent
- delay_days
- dependency_task_id
- workload_estimate_hours
- workload_actual_hours
- created_at
- updated_at

# ============================================================
# PROJECT MILESTONE MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- milestone_id
- project_id
- milestone_name
- milestone_status
- due_date
- completed_at
- delay_days
- owner_id
- created_at
- updated_at

# ============================================================
# PROJECT ISSUE MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- issue_id
- project_id
- related_task_id
- title
- description
- severity
- status
- owner_id
- due_date
- resolved_at
- created_at
- updated_at

# ============================================================
# PROJECT RISK MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- risk_id
- project_id
- title
- description
- probability_level
- impact_level
- risk_score
- mitigation_plan
- owner_id
- status
- created_at
- updated_at

# ============================================================
# PROJECT TIME ENTRY MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- time_entry_id
- project_id
- task_id
- member_id
- work_date
- hours
- work_type
- note
- export_state
- exported_at
- created_at
- updated_at

# ============================================================
# PROJECT SYNC REQUEST MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- sync_request_id
- sync_direction
- sync_type
- target_project_id
- status
- requested_by
- requested_at
- executed_at
- retry_count
- error_code
- error_message

# ============================================================
# PROJECT SYNC LOG MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- sync_log_id
- sync_request_id
- target_entity_type
- target_entity_id
- field_name
- previous_value_snapshot
- next_value_snapshot
- result_status
- created_at


# ============================================================
# PROJECT FLOW RUNTIME INDEX
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 0400000_PROJECT_FLOW_RUNTIME_INDEX.md
- 0400001_PROJECT_FLOW_RUNTIME_OVERVIEW.md
- 0400002_PROJECT_LIFECYCLE_RUNTIME.md
- 0400003_TASK_RUNTIME.md
- 0400004_PROGRESS_RUNTIME.md
- 0400005_SYNC_RUNTIME.md
- 0400006_IMPORT_EXPORT_RUNTIME.md

# ============================================================
# PROJECT FLOW RUNTIME OVERVIEW
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

runtime_focus:
- project lifecycle
- task progression
- milestone delay
- issue/risk lifecycle
- sync execution
- retry behavior

# ============================================================
# PROJECT LIFECYCLE RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

project_states:
- draft
- imported
- active
- on_hold
- completed
- archived

rules:
- imported projects start as imported or active by policy
- completed requires milestone closure or approved override
- archived is read-mostly

# ============================================================
# TASK RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

task_states:
- not_started
- in_progress
- blocked
- done
- cancelled

rules:
- overdue is derived
- blocked task must expose blocking reason
- done requires completion timestamp

# ============================================================
# PROGRESS RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

rules:
- task progress must remain between 0 and 100
- project progress may be manual or task-derived by policy
- delay_days is derived from schedule and completion state

# ============================================================
# SYNC RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

sync_modes:
- manual
- scheduled
- retry
- initial_full_import
- differential_import

rules:
- each sync must create a sync_request record
- each mutation must create sync logs
- silent discard is forbidden

# ============================================================
# IMPORT EXPORT RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

import_rules:
- ERP-owned fields are refreshed from ERP path
- protected local fields remain unchanged

export_rules:
- only mapped outbound fields are publishable
- rejected export must remain reviewable and retryable


# ============================================================
# PROJECT FLOW FLOW INDEX
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 0500000_PROJECT_FLOW_FLOW_INDEX.md
- 0500001_PROJECT_FLOW_FLOW_OVERVIEW.md
- 0500002_PROJECT_CREATION_FLOW.md
- 0500003_PROJECT_IMPORT_FROM_ERP_FLOW.md
- 0500004_PROGRESS_UPDATE_FLOW.md
- 0500005_TIME_ENTRY_FLOW.md
- 0500006_ISSUE_AND_RISK_FLOW.md
- 0500007_PROJECT_EXPORT_TO_ERP_FLOW.md
- 0500008_SYNC_RETRY_FLOW.md

# ============================================================
# PROJECT FLOW FLOW OVERVIEW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

major_flows:
- local project creation
- ERP project import
- task and progress update
- issue/risk handling
- work log entry
- outbound publication
- retry and audit review

# ============================================================
# PROJECT CREATION FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. user opens project creation
2. user enters local execution attributes
3. system validates required fields
4. project is stored as local draft or active
5. optional ERP linkage is attached later

# ============================================================
# PROJECT IMPORT FROM ERP FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. sync operator starts ERP import request
2. shared BusinessOS executes intake
3. mapping rules are applied
4. ERP-owned fields are stored
5. local project is created or updated
6. sync logs are recorded
7. result is shown in UI

# ============================================================
# PROGRESS UPDATE FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. member or manager updates progress
2. system recalculates state
3. project progress is recalculated or confirmed
4. outbound publication eligibility is evaluated

# ============================================================
# TIME ENTRY FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. member selects project or task
2. member enters work date and hours
3. system validates entry
4. entry is saved
5. outbound pending state is set if mapping exists

# ============================================================
# ISSUE AND RISK FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. issue or risk is registered
2. owner and severity are assigned
3. mitigation or action is recorded
4. status changes are tracked
5. dashboard reflects counts and severity

# ============================================================
# PROJECT EXPORT TO ERP FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. system finds publishable mapped data
2. publication request is created
3. shared BusinessOS executes ERP publication
4. success or failure is returned
5. logs remain reviewable

# ============================================================
# SYNC RETRY FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. operator reviews failed sync
2. system displays error category
3. operator fixes mapping or data if needed
4. retry executes new sync request
5. previous failure remains preserved in history


# ============================================================
# PROJECT FLOW INTEGRATION INDEX
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 0600000_PROJECT_FLOW_INTEGRATION_INDEX.md
- 0600001_PROJECT_FLOW_INTEGRATION_OVERVIEW.md
- 0600002_PROJECT_FLOW_API_CONTRACT.md
- 0600003_PROJECT_FLOW_ERP_MAPPING.md
- 0600004_PROJECT_FLOW_REFERENCE_MASTER_SYNC.md

# ============================================================
# PROJECT FLOW INTEGRATION OVERVIEW
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

integration_style:
Shared BusinessOS mediated integration.

inbound_sources:
- ERP project master
- ERP customer master
- ERP budget reference
- ERP actual cost reference
- ERP organization reference

outbound_targets:
- project progress
- milestone result
- selected time actual
- completion status

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

# ============================================================
# PROJECT FLOW ERP MAPPING
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

inbound_mapping_examples:
erp_project_code -> project.erp_project_code
erp_project_name -> project.project_name
erp_customer_id -> project.customer_id
erp_budget_amount -> project.budget_amount_view
erp_actual_cost_amount -> project.actual_cost_amount_view

outbound_mapping_examples:
project.progress_percent -> outbound.progress_percent
project.project_status -> outbound.project_status
time_entry.hours -> outbound.actual_hours

protected_rules:
- ERP code is read-only locally
- ERP budget is read-only locally by default
- issue and risk are local-owned by default

# ============================================================
# PROJECT FLOW REFERENCE MASTER SYNC
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

reference_masters:
- customer master
- department master
- assignee reference
- project type master
- shared status master if needed

rules:
- reference sync should run before project intake when needed
- invalid reference must produce reviewable error


# ============================================================
# PROJECT FLOW OPERATIONS INDEX
# ============================================================

status: canonical
layer: operations
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 0700000_PROJECT_FLOW_OPERATIONS_INDEX.md
- 0700001_PROJECT_FLOW_OPERATIONS_OVERVIEW.md
- 0700002_PROJECT_FLOW_OPERATION_POLICY.md
- 0700003_PROJECT_FLOW_ERROR_HANDLING.md
- 0700004_PROJECT_FLOW_MONITORING.md

# ============================================================
# PROJECT FLOW OPERATIONS OVERVIEW
# ============================================================

status: canonical
layer: operations
application: ProjectFlow
owner: Boss
prepared_by: Zero

operation_targets:
- daily project operation
- sync monitoring
- mapping maintenance
- error review
- user support

# ============================================================
# PROJECT FLOW OPERATION POLICY
# ============================================================

status: canonical
layer: operations
application: ProjectFlow
owner: Boss
prepared_by: Zero

policies:
- initial import should be operator-controlled
- destructive bulk update requires explicit confirmation
- sync scheduling must be documented
- failed sync backlog must be visible

# ============================================================
# PROJECT FLOW ERROR HANDLING
# ============================================================

status: canonical
layer: operations
application: ProjectFlow
owner: Boss
prepared_by: Zero

error_categories:
- mapping_error
- validation_error
- transport_error
- authentication_error
- authorization_error
- conflict_error
- stale_data_error

rules:
- retryability must be explicit
- operator message and system detail should be separable

# ============================================================
# PROJECT FLOW MONITORING
# ============================================================

status: canonical
layer: operations
application: ProjectFlow
owner: Boss
prepared_by: Zero

monitoring_targets:
- import success rate
- export success rate
- failed sync backlog
- overdue projects
- overdue tasks
- open issue count
- high risk count


# ============================================================
# PROJECT FLOW POLICY INDEX
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 0800000_PROJECT_FLOW_POLICY_INDEX.md
- 0800001_PROJECT_FLOW_POLICY_OVERVIEW.md
- 0800002_PROJECT_FLOW_SOURCE_OF_TRUTH_POLICY.md
- 0800003_PROJECT_FLOW_EDIT_POLICY.md
- 0800004_PROJECT_FLOW_DATA_RETENTION_POLICY.md

# ============================================================
# PROJECT FLOW POLICY OVERVIEW
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

policy_domains:
- source of truth
- editability
- retention
- conflict resolution

# ============================================================
# PROJECT FLOW SOURCE OF TRUTH POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

erp_truth:
- official project code
- customer
- contract amount
- formal budget
- accounting actual cost
- formal organization references
- billing and sales

local_truth:
- task execution
- issue and risk
- field note
- operational milestone progress
- workload understanding

# ============================================================
# PROJECT FLOW EDIT POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

edit_rules:
- ERP-owned fields are read-only by default
- local-owned fields are editable by role
- protected manual override requires audit trail

# ============================================================
# PROJECT FLOW DATA RETENTION POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

retention_targets:
- project snapshots
- sync requests
- sync logs
- issue history
- risk history
- time entry history

rules:
- archival is preferred over destructive delete


# ============================================================
# PROJECT FLOW META INDEX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 0900000_PROJECT_FLOW_META_INDEX.md
- 0900001_PROJECT_FLOW_META_OVERVIEW.md
- 0900002_PROJECT_FLOW_IMPLEMENTATION_READINESS_CHECKLIST.md

# ============================================================
# PROJECT FLOW META OVERVIEW
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Implementation readiness and review notes.

# ============================================================
# PROJECT FLOW IMPLEMENTATION READINESS CHECKLIST
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- application definition fixed
- scope fixed
- source of truth split fixed
- integration boundary fixed
- screen architecture fixed
- model draft fixed
- flow draft fixed
- DB physical schema pending
- API exact payload pending
- implementation module split pending
- test design pending


# ============================================================
# PROJECT FLOW SECURITY INDEX
# ============================================================

status: canonical
layer: security
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 1000000_PROJECT_FLOW_SECURITY_INDEX.md
- 1000001_PROJECT_FLOW_SECURITY_OVERVIEW.md
- 1000002_PROJECT_FLOW_ACCESS_CONTROL_SECURITY.md

# ============================================================
# PROJECT FLOW SECURITY OVERVIEW
# ============================================================

status: canonical
layer: security
application: ProjectFlow
owner: Boss
prepared_by: Zero

security_targets:
- role-based access
- protected ERP fields
- auditability
- safe retry

# ============================================================
# PROJECT FLOW ACCESS CONTROL SECURITY
# ============================================================

status: canonical
layer: security
application: ProjectFlow
owner: Boss
prepared_by: Zero

rules:
- unauthorized export request is forbidden
- protected fields cannot be updated by standard members
- sync operator rights must be scoped


# ============================================================
# PROJECT FLOW INFRASTRUCTURE INDEX
# ============================================================

status: canonical
layer: infrastructure
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 1100000_PROJECT_FLOW_INFRASTRUCTURE_INDEX.md
- 1100001_PROJECT_FLOW_INFRASTRUCTURE_OVERVIEW.md
- 1100002_PROJECT_FLOW_DEPENDENCY_OVERVIEW.md

# ============================================================
# PROJECT FLOW INFRASTRUCTURE OVERVIEW
# ============================================================

status: canonical
layer: infrastructure
application: ProjectFlow
owner: Boss
prepared_by: Zero

infrastructure_notes:
- app UI layer
- operational data store
- shared BusinessOS integration dependency
- notification dependency

# ============================================================
# PROJECT FLOW DEPENDENCY OVERVIEW
# ============================================================

status: canonical
layer: infrastructure
application: ProjectFlow
owner: Boss
prepared_by: Zero

dependencies:
- shared BusinessOS integration path
- ERP reference master availability
- member reference availability


# ============================================================
# PROJECT FLOW IMPLEMENTATION INDEX
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 1200000_PROJECT_FLOW_IMPLEMENTATION_INDEX.md
- 1200001_PROJECT_FLOW_IMPLEMENTATION_OVERVIEW.md
- 1200002_PROJECT_FLOW_DB_PHYSICAL_DESIGN_DRAFT.md
- 1200003_PROJECT_FLOW_API_EXACT_CONTRACT_DRAFT.md

# ============================================================
# PROJECT FLOW IMPLEMENTATION OVERVIEW
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

implementation_targets:
- screen implementation
- role control
- sync request UI
- log view
- mapping-aware import/export

# ============================================================
# PROJECT FLOW DB PHYSICAL DESIGN DRAFT
# ============================================================

status: draft
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

candidate_tables:
- project
- project_task
- project_milestone
- project_issue
- project_risk
- project_time_entry
- project_sync_request
- project_sync_log

note:
Physical schema must be finalized in review with DB owner.

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


# ============================================================
# PROJECT FLOW DEVELOPMENT INDEX
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

files:
- 1300000_PROJECT_FLOW_DEVELOPMENT_INDEX.md
- 1300001_PROJECT_FLOW_DEVELOPMENT_OVERVIEW.md
- 1300002_PROJECT_FLOW_TEST_POINT_DRAFT.md

# ============================================================
# PROJECT FLOW DEVELOPMENT OVERVIEW
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

development_focus:
- screen-first operational usability
- safe sync handling
- role-aware behavior
- visibility of delays and risks

# ============================================================
# PROJECT FLOW TEST POINT DRAFT
# ============================================================

status: draft
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

test_points:
- ERP import result display
- protected field lock
- task progress update
- issue/risk registration
- export request and retry
- sync error visibility
