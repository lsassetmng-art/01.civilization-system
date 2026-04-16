# ============================================================
# EXPENSE REFERENCE MAINTENANCE NOTE
# ============================================================

status: canonical
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines how reference/navigation assets should be maintained
after the current ExpenseSettlement design round.

maintenance_principles:
- keep summary entrypoints stable
- keep restart docs readable
- prefer additive maintenance over destructive cleanup
- preserve the distinction between summary docs and detailed policy docs
- keep implementation gate language intact

reference_assets_to_maintain_first:
- 00_EXPENSE_SETTLEMENT_FINAL_INTEGRATED_SUMMARY.md
- 9000009_EXPENSE_FINAL_HANDOFF_PACKAGE.md
- 9000015_EXPENSE_RESTART_QUICK_MAP.md
- 9000020_EXPENSE_MASTER_RESTART_NOTE.md
- 9000026_EXPENSE_FINAL_ROUND_REGISTRY.md
- 9000044_EXPENSE_FINAL_READING_PACK_NOTE.md

maintenance_rule:
If future maintenance changes any navigation/start document,
restart guidance should be reviewed together, not separately.

