# ============================================================
# PROJECT FLOW IMPLEMENTATION START DEPENDENCY NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep guidance
for respecting starter-package dependencies.

implementation_rules:
- do not start downstream packages without upstream planning outputs
- do not bypass dependency conditions by informal assumption
- boundary-aware packages must additionally respect conflict and DB-review conditions
- package dependency state should be visible in execution records where practical
