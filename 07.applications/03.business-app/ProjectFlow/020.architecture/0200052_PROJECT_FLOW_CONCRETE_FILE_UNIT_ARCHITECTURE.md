# ============================================================
# PROJECT FLOW CONCRETE FILE UNIT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the concrete file/task unit layer
after concrete coding work groups are approved.

unit_domains:
- app entry files
- navigation files
- screen container files
- reducer files
- viewmodel files
- preview files
- export route files
- repository files
- gateway files
- sync UI files
- cache trigger files

architecture_rules:
- concrete file/task units must be narrower than concrete coding work groups
- file units should preserve module and package ownership
- local file units should come before most boundary-aware file units
- blocked boundary scope must remain excluded
