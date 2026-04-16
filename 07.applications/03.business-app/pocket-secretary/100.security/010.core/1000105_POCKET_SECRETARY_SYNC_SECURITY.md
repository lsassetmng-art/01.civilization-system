# ============================================================
# POCKET SECRETARY SYNC SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines security rules for bounded synchronization behavior.

rules:
- sync source and destination roles must be explicit
- confirmed sync requires actual confirmation
- conflict must remain detectable
- reconnect must not silently overwrite user intent
- timeout or absence of failure is not confirmation
