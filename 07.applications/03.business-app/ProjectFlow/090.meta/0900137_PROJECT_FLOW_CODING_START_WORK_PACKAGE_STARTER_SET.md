# ============================================================
# PROJECT FLOW CODING START WORK PACKAGE STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the first recommended work packages
for coding-start planning.

starter_work_packages:

PF-CODE-001:
- package_name: Module Package Skeleton Breakdown
- scope_type: coding_start_local
- objective: break approved module and package ownership into coding-start scopes
- prerequisite_documents:
  - 0200041_PROJECT_FLOW_FINAL_MODULE_AND_RUNTIME_ARCHITECTURE.md
  - 0900135_PROJECT_FLOW_CODING_START_ENTRY_NOTE.md
  - approved module and slice outputs

PF-CODE-002:
- package_name: Screen ViewModel Boundary Breakdown
- scope_type: coding_start_local
- objective: break screen/state slices into viewmodel and state-holder scopes
- prerequisite_documents:
  - approved state_event_matrix related outputs
  - approved screen_to_usecase_map related outputs

PF-CODE-003:
- package_name: Repository Contract Breakdown
- scope_type: coding_start_boundary_aware
- objective: break approved repository/gateway slices into code-start contracts
- prerequisite_documents:
  - approved repository_gateway_map
  - approved boundary_split_note
  - shared/local component decisions where relevant

PF-CODE-004:
- package_name: Customer Material Flow Breakdown
- scope_type: coding_start_local
- objective: break customer material slices into coding-start surfaces and flows
- prerequisite_documents:
  - approved customer_material_slice_plan
  - approved material_adapter_map

PF-CODE-005:
- package_name: Cache and Sync Surface Breakdown
- scope_type: coding_start_boundary_aware
- objective: break approved cache/sync planning into coding-start surfaces
- prerequisite_documents:
  - approved cache_sync_plan
  - approved sync_visibility_note
