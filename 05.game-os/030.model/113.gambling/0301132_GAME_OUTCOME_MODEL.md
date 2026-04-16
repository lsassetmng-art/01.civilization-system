# ============================================================
# GAME OUTCOME MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: game-outcome
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
game_outcome is the GameOS-side formal result truth for a title, table, match,
or round.

outcome_statuses:
- pending
- provisional
- validating
- finalized
- void
- no-contest
- held
- corrected

responsibilities:
- result truth anchor
- provisional/finalized separation
- anomaly/hold anchor
- payout basis anchor
- correction anchor
- audit anchor

core_principles:
- outcome is not wager
- outcome is not settlement result
- finalized outcome and payout completion must remain separate
