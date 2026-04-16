# ============================================================
# ORDER FLOW FINAL RESTART GUIDE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides a clean restart guide for a future chat or future work session.

restart_paths:

  path_1_review_reflection:
    use_when:
      - Sato review has arrived
    start_from:
      - 1200031_ORDER_FLOW_SQL_REVIEW_FINDINGS_TEMPLATE.md
      - 1200042_ORDER_FLOW_REVIEW_REFLECTION_PACKET_OVERVIEW.md

  path_2_seed_exact_refinement:
    use_when:
      - local/dev seed SQL needs refinement
    start_from:
      - 1100018_ORDER_FLOW_TEST_DATA_AND_SEED_EXACT.md
      - 1200035_ORDER_FLOW_SEED_SQL_PACKET_OVERVIEW.md

  path_3_invoiceflow_receiver_followup:
    use_when:
      - InvoiceFlow side needs exact receiver design
    start_from:
      - 0600005_ORDER_FLOW_DOWNSTREAM_INVOICE_HANDOFF_EXACT.md
      - 0600006_ORDER_FLOW_TO_INVOICEFLOW_RECEIVER_BOUNDARY.md
      - 1200039_ORDER_FLOW_TO_INVOICEFLOW_RECEIVER_API_EXACT.md

  path_4_execution_planning:
    use_when:
      - review is closed and execution planning begins
    start_from:
      - 1200030_ORDER_FLOW_PRE_EXECUTION_CHECKLIST.md
      - 1100014_ORDER_FLOW_MIGRATION_PACKAGING_OVERVIEW.md
      - 1100017_ORDER_FLOW_MIGRATION_EXECUTION_GUARD.md

restart_rule:
  - do not restart from random mid-layer files first
  - restart from overview, bible, and the topic entry file

