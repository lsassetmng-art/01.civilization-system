# ============================================================
# PROJECT FLOW NEXT IMPLEMENTATION UNIT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the next implementation-unit layer
after first-wave actual implementation tasks.

unit_groups:
- app entry units
- navigation units
- dashboard units
- project detail units
- customer material units
- repository units
- gateway units
- sync/cache units

architecture_rules:
- implementation units must be narrower than actual implementation tasks
- units should preserve module and package ownership
- boundary-aware units must stay separated from purely local units
- blocked boundary scope must remain excluded
