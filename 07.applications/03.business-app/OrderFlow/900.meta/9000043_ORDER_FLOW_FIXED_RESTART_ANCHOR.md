# ============================================================
# ORDER FLOW FIXED RESTART ANCHOR
# ============================================================

status: fixed-restart-anchor
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Declares the fixed restart anchors for future continuation.

fixed_restart_anchors:
  - 9000016_ORDER_FLOW_OFFICIAL_LEDGER.md
  - 9000021_ORDER_FLOW_FINAL_INTEGRATED_CANONICAL_CANDIDATE.md
  - 9000001_ORDER_FLOW_DESIGN_BIBLE.md
  - 9000012_ORDER_FLOW_FINAL_RESTART_GUIDE.md
  - 9000029_ORDER_FLOW_FINAL_RESTART_PROMPT.md

declaration:
  - future continuation should restart from these anchors first
  - isolated mid-layer re-entry is discouraged

