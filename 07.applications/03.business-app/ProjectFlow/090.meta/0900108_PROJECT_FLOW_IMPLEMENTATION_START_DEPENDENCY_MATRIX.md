# ============================================================
# PROJECT FLOW IMPLEMENTATION START DEPENDENCY MATRIX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines dependency relations
between the first implementation-start planning packages.

dependency_matrix:

PF-IMP-001:
- package_name: Module Skeleton Planning
- depends_on:
  - implementation_start_entry_confirmed
- blocks:
  - PF-IMP-002
  - PF-IMP-003
  - PF-IMP-005

PF-IMP-002:
- package_name: Screen State Event Planning
- depends_on:
  - PF-IMP-001
- blocks:
  - PF-IMP-003
  - PF-IMP-004

PF-IMP-003:
- package_name: Repository and Gateway Planning
- depends_on:
  - PF-IMP-001
  - PF-IMP-002
  - boundary_check_if_needed
- blocks:
  - later repository-slice planning
  - later gateway-slice planning

PF-IMP-004:
- package_name: Customer Material Implementation Planning
- depends_on:
  - PF-IMP-002
- blocks:
  - later customer-material slice planning

PF-IMP-005:
- package_name: Local Cache and Sync Planning
- depends_on:
  - PF-IMP-001
  - boundary_direction_confirmed_enough
- blocks:
  - later sync-visibility slice planning
  - later cache-behavior slice planning

important_rule:
A package may start only when its dependency conditions are satisfied.
