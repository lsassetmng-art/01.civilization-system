# ============================================================
# POCKET SECRETARY SYNC RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for bounded synchronization
between local state and external systems.

sync states:
- local_only
- pending
- confirmed
- failed
- conflicted

rules:
- pending must remain visible
- conflict must be explicit
- confirmed requires actual confirmation
- retry must be bounded and safe
- reconnect must not silently rewrite user intent
