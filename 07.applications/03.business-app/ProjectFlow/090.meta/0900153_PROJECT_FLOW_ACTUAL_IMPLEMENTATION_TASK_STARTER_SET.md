# ============================================================
# PROJECT FLOW ACTUAL IMPLEMENTATION TASK STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the first recommended actual implementation task set.

starter_tasks:

PF-TASK-001:
- task_name: app-projectflow module skeleton task
- task_group: module skeleton
- scope_type: actual_impl_local
- prerequisites:
  - approved package_breakdown_map

PF-TASK-002:
- task_name: feature-dashboard package skeleton task
- task_group: module skeleton
- scope_type: actual_impl_local
- prerequisites:
  - approved package_breakdown_map

PF-TASK-003:
- task_name: dashboard state-holder task
- task_group: screen state-holder
- scope_type: actual_impl_local
- prerequisites:
  - approved state_holder_breakdown
  - approved viewmodel_boundary_map

PF-TASK-004:
- task_name: project detail state-holder task
- task_group: screen state-holder
- scope_type: actual_impl_local
- prerequisites:
  - approved state_holder_breakdown
  - approved viewmodel_boundary_map

PF-TASK-005:
- task_name: customer material flow skeleton task
- task_group: customer material flow
- scope_type: actual_impl_local
- prerequisites:
  - approved material_flow_breakdown

PF-TASK-006:
- task_name: local repository contract skeleton task
- task_group: repository contract
- scope_type: actual_impl_boundary_aware
- prerequisites:
  - approved repository_contract_map
  - blocked scope excluded

PF-TASK-007:
- task_name: BusinessOS gateway contract skeleton task
- task_group: gateway contract
- scope_type: actual_impl_boundary_aware
- prerequisites:
  - approved gateway_contract_map
  - confirmed boundary-safe scope only

PF-TASK-008:
- task_name: cache and sync surface skeleton task
- task_group: cache and sync surface
- scope_type: actual_impl_boundary_aware
- prerequisites:
  - approved cache_sync_surface_breakdown
  - blocked scope excluded
