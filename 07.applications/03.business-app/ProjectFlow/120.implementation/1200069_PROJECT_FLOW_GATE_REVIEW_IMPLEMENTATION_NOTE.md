# ============================================================
# PROJECT FLOW GATE REVIEW IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep guidance for gate review execution.

implementation_rules:
- each package should have one gate review result before active progression
- gate review should happen before deeper planning,
  not after
- blocked packages should record non-start result explicitly
- boundary-sensitive packages should record conflict-clear status explicitly
