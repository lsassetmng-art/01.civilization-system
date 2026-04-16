# ============================================================
# ORDER FLOW FINAL MASTER RESTART NOTE
# ============================================================

status: draft-final-restart
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Acts as the master restart note for future continuation.

restart_anchor_files:
  - 9000016_ORDER_FLOW_OFFICIAL_LEDGER.md
  - 9000021_ORDER_FLOW_FINAL_INTEGRATED_CANONICAL_CANDIDATE.md
  - 9000001_ORDER_FLOW_DESIGN_BIBLE.md
  - 9000012_ORDER_FLOW_FINAL_RESTART_GUIDE.md

best_restart_modes:
  - reflect review
  - refine seed sql
  - continue InvoiceFlow exact
  - start execution planning after approval

restart_warning:
  - do not restart from isolated implementation files without reading the overview or ledger first

