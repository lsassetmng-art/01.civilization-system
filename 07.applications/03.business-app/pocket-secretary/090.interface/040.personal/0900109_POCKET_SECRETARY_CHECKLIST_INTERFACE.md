# ============================================================
# POCKET SECRETARY CHECKLIST INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the user interface for checklist creation,
editing, completion, and archive access.

required UI elements:
- checklist list
- checklist detail/editor
- item completion controls
- archive or retention controls

rules:
- checklist state must remain visually understandable
- checklist completion must not be confused with deletion
