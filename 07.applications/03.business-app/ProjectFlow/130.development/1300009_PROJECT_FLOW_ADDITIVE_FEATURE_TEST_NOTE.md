# ============================================================
# PROJECT FLOW ADDITIVE FEATURE TEST NOTE
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

test_points:
- form intake creates correct downstream entities
- automation triggers fire only when conditions match
- gantt and timeline reflect dependency order
- dashboard aggregates latest operational values
- memo and meeting notes remain project-linked
- comments remain attached to the correct target entity
- template expansion produces expected structure
- schedule proposal remains editable after generation
- business-day rules affect proposed dates correctly
