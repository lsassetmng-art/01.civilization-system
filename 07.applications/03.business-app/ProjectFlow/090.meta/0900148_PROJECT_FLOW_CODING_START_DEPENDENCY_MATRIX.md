# ============================================================
# PROJECT FLOW CODING START DEPENDENCY MATRIX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines dependency relations between the first coding-start packages.

dependency_matrix:

PF-CODE-001:
- package_name: Module Package Skeleton Breakdown
- depends_on:
  - coding_start_entry_confirmed
- blocks:
  - PF-CODE-002
  - PF-CODE-003
  - PF-CODE-005

PF-CODE-002:
- package_name: Screen ViewModel Boundary Breakdown
- depends_on:
  - PF-CODE-001
- blocks:
  - PF-CODE-004
  - later screen-unit breakdown

PF-CODE-003:
- package_name: Repository Contract Breakdown
- depends_on:
  - PF-CODE-001
  - approved repository_gateway_map
  - approved boundary_split_note
- blocks:
  - later repository unit breakdown
  - later gateway unit breakdown

PF-CODE-004:
- package_name: Customer Material Flow Breakdown
- depends_on:
  - PF-CODE-002
  - approved customer_material_slice_plan
  - approved material_adapter_map
- blocks:
  - later material unit breakdown

PF-CODE-005:
- package_name: Cache and Sync Surface Breakdown
- depends_on:
  - PF-CODE-001
  - approved cache_sync_plan
  - approved sync_visibility_note
- blocks:
  - later cache and sync unit breakdown

important_rule:
A coding-start package may start only when its upstream approved outputs are available.
