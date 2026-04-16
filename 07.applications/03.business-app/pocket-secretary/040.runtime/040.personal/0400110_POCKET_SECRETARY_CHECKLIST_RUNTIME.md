# ============================================================
# POCKET SECRETARY CHECKLIST RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for checklist creation,
editing, item completion, and archival.

rules:
- checklist actions are local by default
- checklist completion and archival remain explicit
- checklist UI refresh and state persistence must remain consistent
