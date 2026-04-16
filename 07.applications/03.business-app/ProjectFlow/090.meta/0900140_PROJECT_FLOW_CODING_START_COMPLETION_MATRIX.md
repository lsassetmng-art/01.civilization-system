# ============================================================
# PROJECT FLOW CODING START COMPLETION MATRIX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines completion conditions
for the first coding-start work packages.

completion_matrix:

PF-CODE-001:
- package_name: Module Package Skeleton Breakdown
- expected_deliverables:
  - package_breakdown_map
- completion_condition:
  - each target module has coding-start package ownership defined
  - local feature package boundaries are explicit
  - integration-businessos package boundary remains explicit

PF-CODE-002:
- package_name: Screen ViewModel Boundary Breakdown
- expected_deliverables:
  - state_holder_breakdown
  - viewmodel_boundary_map
- completion_condition:
  - each starter screen has state-holder scope defined
  - viewmodel responsibility boundary is explicit
  - blocked boundary-aware concerns are excluded from local screen boundary

PF-CODE-003:
- package_name: Repository Contract Breakdown
- expected_deliverables:
  - repository_contract_map
  - gateway_contract_map
- completion_condition:
  - local repository contracts are explicit
  - BusinessOS-facing gateway contracts are explicit
  - shared/local ownership assumptions remain explicit

PF-CODE-004:
- package_name: Customer Material Flow Breakdown
- expected_deliverables:
  - material_flow_breakdown
- completion_condition:
  - six customer material flows are split into code-start surfaces
  - review-aware export path remains explicit
  - local composition versus shared shell usage remains explicit

PF-CODE-005:
- package_name: Cache and Sync Surface Breakdown
- expected_deliverables:
  - cache_sync_surface_breakdown
- completion_condition:
  - cache surfaces and sync visibility surfaces are explicit
  - retry and sync-state visibility remain separate from business truth
  - blocked boundary-sensitive concerns remain excluded
