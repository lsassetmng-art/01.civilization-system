# ============================================================
# POCKET SECRETARY ERP AUTH CONTEXT RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific auth-context runtime
based on the shared auth-context common runtime.

common reference:
BusinessOS submission common runtime defines:
- presence check
- validity check
- expiry check
- company context check
- submission eligibility decision

PocketSecretary-specific application:
- auth checks happen from Enterprise review/submission flows

rules:
- valid ERP API auth context is required for submission
- missing, invalid, or expired context blocks submission
- unknown auth state must fail closed
