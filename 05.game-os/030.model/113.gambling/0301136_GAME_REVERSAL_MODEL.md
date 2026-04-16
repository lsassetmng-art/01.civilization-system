# ============================================================
# GAME REVERSAL MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: game-reversal
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
game_reversal is the formal correction path for already-processed payout, refund,
or settlement results.

reversal_reasons:
- duplicate payout correction
- erroneous payout correction
- incorrect refund correction
- anomaly repair
- operator-approved correction
- downstream finance mismatch correction

core_principles:
- reversal is not refund
- reversal is strong-audit correction
- silent correction is forbidden
