# ============================================================
# DATA RULE
# ============================================================

status: canonical
layer: rule
component: data-rule

owner: Boss
prepared_by: Zero


# DATA PRINCIPLE

All data must remain auditable.


# DATA STORAGE

Primary stores:

event_store
snapshot_store
audit_log


# DATA INTEGRITY

All state transitions must be traceable through event history.


# FINAL RULE

Data mutation without event trace is prohibited.

