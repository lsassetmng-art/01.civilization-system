# ============================================================
# GAMBLING WAGER TO SETTLEMENT FLOW
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: flow
domain: gambling-settlement
document_type: flow
owner: Boss
prepared_by: Zero

# ============================================================
# 1. FLOW PURPOSE
# ============================================================

This flow describes how national-currency gambling proceeds from wager intent
to finance-linked result handling.

# ============================================================
# 2. FLOW STEPS
# ============================================================

1. player initiates wager intent
2. eligibility result is evaluated
3. wallet lock is requested
4. lock is confirmed
5. wager becomes active
6. gameplay proceeds
7. provisional outcome is produced
8. outcome is validated and finalized or held
9. settlement instruction is issued
10. settlement result is recorded
11. refund or reversal is used when required

# ============================================================
# 3. FLOW RULES
# ============================================================

- no active wager before lock confirmation
- no settlement before finalized outcome
- outcome truth and wallet truth are separate
- refund and reversal are separate paths
- dispute and anomaly hold may interrupt settlement
- full auditability is required

# ============================================================
# 4. CONCLUSION
# ============================================================

This flow keeps gambling gameplay, finance processing, and safety control
separated but connected through auditable boundaries.
