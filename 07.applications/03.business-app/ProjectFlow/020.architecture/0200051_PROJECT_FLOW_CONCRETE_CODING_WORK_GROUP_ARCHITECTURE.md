# ============================================================
# PROJECT FLOW CONCRETE CODING WORK GROUP ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the concrete coding work-group layer
after next implementation units are approved.

work_group_domains:
- app bootstrap
- navigation graph
- dashboard ui
- dashboard state and actions
- project detail state
- customer material preview
- customer material export
- repository implementation
- gateway implementation
- sync visibility
- cache refresh

architecture_rules:
- concrete coding work groups must be narrower than implementation units
- work groups should preserve module,
  package,
  and ownership boundaries
- local work groups should come before most boundary-aware work groups
- blocked boundary scope must remain excluded
