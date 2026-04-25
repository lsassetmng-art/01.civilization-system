# ============================================================
# AIWORKER RAW TABLE ACCESS LEDGER EXACT
# ============================================================

status: exact-infrastructure
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the first exact raw-table access ledger for AiworkerOS.

access_legend:
- NONE
- SELECT
- INSERT
- UPDATE
- EXECUTE
- DELIVERY_UPDATE
- OWN

table_group_access:

A. master and policy tables
- aiworker.worker_master
  ROLE_AIW_SCHEMA_OWNER: OWN
  ROLE_AIW_MIGRATOR: NONE
  ROLE_AIW_CONTROLLED_FUNCTION_EXECUTOR: NONE
  ROLE_AIW_OPERATIONS_REVIEWER: SELECT
  ROLE_AIW_AUDIT_READER: NONE
  ROLE_AIW_RESTRICTED_REVIEWER: NONE
  ROLE_AIW_PRIVILEGED_REVIEWER: NONE
  ROLE_AIW_EVENT_DELIVERY: NONE
  ROLE_AIW_OFFICIAL_INTAKE_WRITER: NONE
  ROLE_AIW_NO_RAWTABLE_AIWORKER: NONE

- aiworker.developer_company_master
  ROLE_AIW_SCHEMA_OWNER: OWN
  ROLE_AIW_OPERATIONS_REVIEWER: SELECT
  all_other_runtime_roles: NONE

- aiworker.company_style_policy
  ROLE_AIW_SCHEMA_OWNER: OWN
  ROLE_AIW_OPERATIONS_REVIEWER: SELECT
  all_other_runtime_roles: NONE

B. tendency tables
- aiworker.company_ai_usage_tendency
  ROLE_AIW_SCHEMA_OWNER: OWN
  ROLE_AIW_CONTROLLED_FUNCTION_EXECUTOR: NONE
  ROLE_AIW_OPERATIONS_REVIEWER: SELECT
  all_other_runtime_roles: NONE

- aiworker.user_ai_usage_tendency
  ROLE_AIW_SCHEMA_OWNER: OWN
  ROLE_AIW_CONTROLLED_FUNCTION_EXECUTOR: NONE
  ROLE_AIW_OPERATIONS_REVIEWER: SELECT
  all_other_runtime_roles: NONE

C. growth and capability tables
- aiworker.worker_growth_profile
- aiworker.worker_growth_event
- aiworker.worker_capability_snapshot
- aiworker.worker_domain_proficiency
- aiworker.worker_role_proficiency
  ROLE_AIW_SCHEMA_OWNER: OWN
  ROLE_AIW_AUDIT_READER: SELECT
  ROLE_AIW_OPERATIONS_REVIEWER: SELECT
  all_other_runtime_roles: NONE

D. assignment and availability tables
- aiworker.worker_assignment_state
- aiworker.worker_dispatch_reservation
- aiworker.worker_availability_state
- aiworker.worker_queue_membership
  ROLE_AIW_SCHEMA_OWNER: OWN
  ROLE_AIW_AUDIT_READER: SELECT
  ROLE_AIW_OPERATIONS_REVIEWER: SELECT
  all_other_runtime_roles: NONE

E. affinity and fit tables
- aiworker.worker_company_affinity
- aiworker.worker_user_affinity
- aiworker.worker_assignment_fit_profile
  ROLE_AIW_SCHEMA_OWNER: OWN
  ROLE_AIW_OPERATIONS_REVIEWER: SELECT
  all_other_runtime_roles: NONE

F. restricted and privileged tables
- aiworker.worker_privileged_profile
  ROLE_AIW_SCHEMA_OWNER: OWN
  ROLE_AIW_PRIVILEGED_REVIEWER: SELECT
  all_other_runtime_roles: NONE

- aiworker.worker_restricted_handling_policy
  ROLE_AIW_SCHEMA_OWNER: OWN
  ROLE_AIW_RESTRICTED_REVIEWER: SELECT
  all_other_runtime_roles: NONE

- aiworker.worker_exception_control_state
  ROLE_AIW_SCHEMA_OWNER: OWN
  ROLE_AIW_RESTRICTED_REVIEWER: SELECT
  ROLE_AIW_PRIVILEGED_REVIEWER: SELECT
  all_other_runtime_roles: NONE

G. audit and history tables
- aiworker.worker_state_change_log
- aiworker.worker_assignment_history
- aiworker.worker_repair_history
- aiworker.worker_rebuild_history
  ROLE_AIW_SCHEMA_OWNER: OWN
  ROLE_AIW_AUDIT_READER: SELECT
  ROLE_AIW_RESTRICTED_REVIEWER: SELECT on restricted-relevant subset via RLS
  ROLE_AIW_PRIVILEGED_REVIEWER: SELECT on privileged-relevant subset via RLS
  all_other_runtime_roles: NONE

H. workflow tables
- aiworker.command_row
- aiworker.draft_row
- aiworker.staging_row
  ROLE_AIW_SCHEMA_OWNER: OWN
  ROLE_AIW_OPERATIONS_REVIEWER: SELECT
  all_other_runtime_roles: NONE

hard_rules:
- controlled-function executor is not granted ad hoc raw-table DML in this ledger
- canonical mutation is modeled as function execution privilege, not broad table privilege
- AI worker runtime roles remain NONE across raw tables
