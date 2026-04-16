# ============================================================
# ORDER FLOW CANONICAL ENTRY NOTE
# ============================================================

status: canonical-entry-note
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides the shortest canonical entry set for OrderFlow.

canonical_entry_files:
  - 9000016_ORDER_FLOW_OFFICIAL_LEDGER.md
  - 9000021_ORDER_FLOW_FINAL_INTEGRATED_CANONICAL_CANDIDATE.md
  - 9000001_ORDER_FLOW_DESIGN_BIBLE.md
  - 9000012_ORDER_FLOW_FINAL_RESTART_GUIDE.md

canonical_rule:
  - start from these files before entering lower-layer docs
  - treat these as the fixed entry anchor set for the current design bundle

