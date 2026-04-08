# ============================================================
# POCKET SECRETARY TODO INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the user interface for todo creation,
editing, completion, prioritization, and archive movement.

required UI elements:
- todo list
- todo detail or editor
- due and priority display
- completion control
- archive control
- reminder visibility where applicable

rules:
- completion and archive actions must remain explicit
- visual styling must not conceal actual todo status
