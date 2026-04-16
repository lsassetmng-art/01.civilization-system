# ============================================================
# PROJECT FLOW GATE REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- every package has a gate review template available
- local-safe packages confirm prerequisite docs first
- boundary-sensitive packages confirm no unresolved conflict first
- blocked packages are explicitly denied active start
- gate review happens before active progression
