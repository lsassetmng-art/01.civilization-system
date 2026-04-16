# ============================================================
# ORDER FLOW MASTER RESTART BRIDGE
# ============================================================

status: draft-master-restart-bridge
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact master restart bridge for future continuation.

master_restart_bridge:
  current_best_restart_files:
    - 9000016_ORDER_FLOW_OFFICIAL_LEDGER.md
    - 9000021_ORDER_FLOW_FINAL_INTEGRATED_CANONICAL_CANDIDATE.md
    - 9000012_ORDER_FLOW_FINAL_RESTART_GUIDE.md
    - 9000029_ORDER_FLOW_FINAL_RESTART_PROMPT.md

  best_restart_topics:
    - reflect Sato review
    - refine seed SQL
    - continue InvoiceFlow receiver exact
    - prepare execution-planning after approval

  restart_warning:
    - do not skip overview or ledger when restarting after long gaps

