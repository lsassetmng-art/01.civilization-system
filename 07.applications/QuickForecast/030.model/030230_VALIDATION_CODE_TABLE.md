# ============================================================
# VALIDATION CODE TABLE
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: validation_code_table
owner: Boss
prepared_by: Zero

entries:

- code: QF-VAL-FORECAST-001
  level: blocking_error
  meaning: target object is missing

- code: QF-VAL-FORECAST-002
  level: blocking_error
  meaning: period range is invalid

- code: QF-VAL-FORECAST-003
  level: warning
  meaning: demand strength is missing

- code: QF-VAL-ACTION-001
  level: warning
  meaning: no action selected

- code: QF-VAL-PROPOSAL-001
  level: warning
  meaning: proposal title is empty

- code: QF-VAL-PROPOSAL-002
  level: warning
  meaning: executive summary is empty

- code: QF-VAL-PROFIT-001
  level: warning
  meaning: unit price is missing

- code: QF-VAL-APPROVAL-001
  level: blocking_error
  meaning: approver identity is unresolved

- code: QF-VAL-SUBMIT-001
  level: blocking_error
  meaning: submission target is missing

- code: QF-VAL-SUBMIT-002
  level: blocking_error
  meaning: required approval is not granted

- code: QF-VAL-TIER-001
  level: blocking_error
  meaning: Pro-only feature requested from Basic
