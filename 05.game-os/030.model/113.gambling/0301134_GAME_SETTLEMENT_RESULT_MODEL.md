# ============================================================
# GAME SETTLEMENT RESULT MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: game-settlement-result
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
game_settlement_result records how a settlement instruction was processed by the
finance/settlement boundary.

result_types:
- payout completed
- refund completed
- hold established
- reversal completed
- failed
- retry-needed
- manual-review-required

core_principles:
- settlement result is not outcome truth
- completed, held, failed, and retry-needed must be separated
- external reference tracking is required
