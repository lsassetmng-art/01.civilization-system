# ============================================================
# GAME FINANCE SETTLEMENT BOUNDARY ARCHITECTURE
# ============================================================

status: draft-for-canonical-update
system: civilization-os
layer: architecture
domain: gambling-governance
document_type: architecture
owner: Boss
prepared_by: Zero

purpose:
Defines the settlement boundary between game-origin instructions and finance-side
governance / ledger / oversight.

boundary_separation:
- wager is not settlement
- outcome is not settlement
- settlement instruction is not settlement result
- refund is not reversal
- governance hold is not finance failure

principles:
- source game meaning and finance truth remain separated
- settlement requires governance visibility
- dispute and anomaly may interrupt settlement closure
