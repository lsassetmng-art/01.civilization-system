# ============================================================
# PROJECT FLOW BOUNDARY WORK PACKAGE IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep guidance for boundary-sensitive
and blocked work packages.

implementation_rules:
- boundary-sensitive packages must list the higher canonical references consulted
- blocked packages must not generate implementation assumptions
- completion of a boundary-sensitive package requires explicit conflict-clear status
- blocked packages may only produce logs,
  summaries,
  or reopen-condition notes
