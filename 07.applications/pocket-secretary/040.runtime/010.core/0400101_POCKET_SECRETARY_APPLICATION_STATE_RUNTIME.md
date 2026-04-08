# ============================================================
# POCKET SECRETARY APPLICATION STATE RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Controls runtime transitions of application-visible state.

state categories:
- active
- idle
- offline
- pending_sync
- awaiting_review
- failed
- conflicted

rules:
- state transitions must be explicit
- failed and pending states must remain visible
- offline state must not be treated as fatal by default
