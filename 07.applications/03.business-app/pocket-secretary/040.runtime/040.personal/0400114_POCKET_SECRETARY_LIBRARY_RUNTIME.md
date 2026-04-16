# ============================================================
# POCKET SECRETARY LIBRARY RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for the Library domain.

runtime areas:
- file registration
- local file reference persistence
- file browsing
- file deletion
- optional summary state handling

rules:
- registration and deletion must remain explicit
- library runtime is local-first
- file existence and summary availability remain distinct
