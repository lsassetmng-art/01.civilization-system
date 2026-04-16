# ============================================================
# ESTIMATE AUDIT AND HISTORY OPERATIONS
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Audit and history operations must record at least:

- estimate create
- estimate update
- estimate delete flag
- line item add/update/remove
- memo add/update/remove
- share request
- share revoke
- sync start/result
- publication request/result
- inventory reference execution
- template application
- QA status change
- premium gate denial where policy requires business trace

History must remain readable as business activity,
not only as low-level technical logs.

