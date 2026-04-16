# ============================================================
# GAME REFUND MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: game-refund
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
game_refund is the formal return path for full or partial wager return.

refund_reasons:
- void result
- no contest
- cancelled before activation
- cancelled before start
- runtime failure before valid result
- eligibility invalidated before valid play
- manual corrective refund

core_principles:
- refund is not payout cancellation
- refund and reversal are separate
- refund reason is mandatory
