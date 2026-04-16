# ============================================================
# GAME OS GAMBLING OVERVIEW
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: gambling
document_type: overview
owner: Boss
prepared_by: Zero

summary:
This domain contains the high-control national-currency gambling model chain.

chain:
- gambling eligibility result
- gambling wager
- game outcome
- settlement instruction
- settlement result
- refund
- reversal
- gambling safety state

principles:
- eligibility, wager, outcome, and settlement are separated
- wallet canonical truth does not live in GameOS
- refund and reversal are separate
- safety state is continuous control truth
- full auditability is mandatory
