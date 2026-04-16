# ============================================================
# PROJECT FLOW EXTERNAL EXPORT POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

policy_targets:
- spreadsheet export
- offline sharing
- customer explanation material

policy_rules:
- exported files are convenience outputs, not source of truth
- permission-sensitive columns must be masked or excluded
- protected ERP-origin data must follow visibility rules
- export history must remain reviewable
- external use must follow company sharing rules
