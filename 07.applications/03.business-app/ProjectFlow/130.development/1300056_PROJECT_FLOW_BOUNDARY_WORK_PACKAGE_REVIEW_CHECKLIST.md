# ============================================================
# PROJECT FLOW BOUNDARY WORK PACKAGE REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- boundary-sensitive packages are separated from local-safe packages
- blocked packages are explicitly marked blocked
- conflict checks are required before boundary-sensitive execution
- blocked packages do not leak into active planning
- higher canonical references are named explicitly
