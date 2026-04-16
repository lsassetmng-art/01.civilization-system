# ============================================================
# GAME SETTLEMENT INSTRUCTION MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: game-settlement-instruction
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
game_settlement_instruction is the formal request unit sent from GameOS to the
finance/settlement boundary after outcome finalization.

instruction_types:
- payout instruction
- refund instruction
- hold instruction
- reversal instruction
- manual-review instruction

core_principles:
- GameOS requests settlement but does not own wallet canonical truth
- instruction and result are separate
- idempotency and correction lineage are mandatory
