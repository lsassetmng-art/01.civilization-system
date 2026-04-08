# ============================================================
# AUTH CONTEXT COMMON RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: business-os
owner: Boss
prepared_by: Zero

definition:
Defines common runtime handling for auth context.

runtime areas:
- presence check
- validity check
- expiry check
- company context check
- submission eligibility decision

rules:
- unknown auth state must fail closed
