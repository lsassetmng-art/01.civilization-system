# ============================================================
# PERSONA RUNTIME ARCHITECTURE
# ============================================================

status: implementation-ready-followup

runtime_boundary:
- runtime consumes released snapshot or package only
- runtime session is ephemeral
- session state never becomes truth state by itself
- host adapter must resolve release lineage before session activation

runtime_lifecycle:
create
active
suspended
resumed
terminating
terminated
expired

required_controls:
- heartbeat timeout handling
- restore/resume contract
- terminal reason capture
- audit event emission for every terminal state
