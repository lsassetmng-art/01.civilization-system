# ============================================================
# POCKET SECRETARY TODO RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for todo creation,
editing, completion, archival, and presentation refresh.

rules:
- todo actions are local by default
- completion does not imply external completion
- archive transition must remain reversible where supported
- priority and due state must be rendered explicitly
