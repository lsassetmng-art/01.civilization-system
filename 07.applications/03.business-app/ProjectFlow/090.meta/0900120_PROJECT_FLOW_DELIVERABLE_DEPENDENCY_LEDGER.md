# ============================================================
# PROJECT FLOW DELIVERABLE DEPENDENCY LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps dependency relations between implementation-start deliverables.

deliverable_dependency_ledger:

module_map:
- produced_by:
  - PF-IMP-001
- unlocks:
  - state_event_matrix
  - repository_gateway_map
  - cache_sync_plan

package_ownership_note:
- produced_by:
  - PF-IMP-001
- unlocks:
  - screen_to_usecase_map
  - boundary_split_note

state_event_matrix:
- produced_by:
  - PF-IMP-002
- unlocks:
  - screen_to_usecase_map
  - customer_material_slice_plan
  - repository_gateway_map

screen_to_usecase_map:
- produced_by:
  - PF-IMP-002
- unlocks:
  - repository_gateway_map
  - later feature-slice planning

customer_material_slice_plan:
- produced_by:
  - PF-IMP-004
- unlocks:
  - material_adapter_map
  - later customer-material implementation slices

material_adapter_map:
- produced_by:
  - PF-IMP-004
- unlocks:
  - later customer-material integration slices

cache_sync_plan:
- produced_by:
  - PF-IMP-005
- unlocks:
  - sync_visibility_note
  - later cache-behavior implementation slices

sync_visibility_note:
- produced_by:
  - PF-IMP-005
- unlocks:
  - later sync UI planning
  - later sync-status implementation slices

repository_gateway_map:
- produced_by:
  - PF-IMP-003
- unlocks:
  - boundary_split_note
  - later repository/gateway feature slices

boundary_split_note:
- produced_by:
  - PF-IMP-003
- unlocks:
  - later boundary-aware feature planning

important_rule:
A deliverable should not be treated as unlocked
before its upstream deliverables exist in usable reviewed form.
