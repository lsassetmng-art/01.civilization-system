# ============================================================
# GAMBLING ELIGIBILITY RESULT MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: gambling-eligibility-result
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
gambling_eligibility_result is the formal evaluation result for whether a player
may participate in a national-currency wager under a given context.

overall_results:
- allowed
- denied
- blocked
- pending-review
- temporarily-unavailable
- system-unverifiable

check_dimensions:
- age/qualification
- region
- wallet readiness
- restriction
- self-exclusion
- cooldown
- limit
- anomaly/risk

core_principles:
- player and eligibility result are separate
- eligibility result is a snapshot, not a permanent truth
- pending-review must never be treated as allowed
