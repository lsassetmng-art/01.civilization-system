# ============================================================
# SYNC RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

sync_modes:
- manual
- scheduled
- retry
- initial_full_import
- differential_import

rules:
- each sync must create a sync_request record
- each mutation must create sync logs
- silent discard is forbidden
