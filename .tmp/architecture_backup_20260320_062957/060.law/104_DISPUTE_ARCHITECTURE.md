# ============================================================
# DISPUTE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:

Conflict between entities regarding rules or contracts.

inputs:

- claim
- evidence
- event_log

outputs:

- resolution

requirements:

All disputes must be traceable via audit log.
