# ============================================================
# PROJECT FLOW REFERENCE CONFLICT IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep implications of reference conflicts.

implementation_rules:
- do not implement against a lower-priority interpretation
  when a higher-priority source disagrees
- field-level implementation planning should pause
  when ownership conflict is unresolved
- update ProjectFlow local notes after conflict resolution,
  not before
