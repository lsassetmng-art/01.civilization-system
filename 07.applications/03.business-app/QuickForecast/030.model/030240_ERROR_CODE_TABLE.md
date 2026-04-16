# ============================================================
# ERROR CODE TABLE
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: error_code_table
owner: Boss
prepared_by: Zero

entries:

- code: QF-ERR-LOCAL-001
  retryable: false
  meaning: local draft save failed

- code: QF-ERR-SYNC-001
  retryable: true
  meaning: sync request failed

- code: QF-ERR-SYNC-002
  retryable: false
  meaning: sync contract rejected

- code: QF-ERR-APPROVAL-001
  retryable: true
  meaning: approval request could not be delivered

- code: QF-ERR-SUBMIT-001
  retryable: true
  meaning: submission transport failed

- code: QF-ERR-SUBMIT-002
  retryable: false
  meaning: submission payload invalid

- code: QF-ERR-PERM-001
  retryable: false
  meaning: permission denied

- code: QF-ERR-TIER-001
  retryable: false
  meaning: unsupported tier access
