# ============================================================
# ORDER FLOW FINAL NAVIGATION BRIDGE
# ============================================================

status: draft-navigation-bridge
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Acts as a bridge note from higher-level navigation to app-local canonical files.

bridge_targets:
  if_reader_wants_full_overview:
    - 9000016_ORDER_FLOW_OFFICIAL_LEDGER.md
    - 9000021_ORDER_FLOW_FINAL_INTEGRATED_CANONICAL_CANDIDATE.md

  if_reader_wants_contract_and_api:
    - 1200001_ORDER_FLOW_API_ORDER_CREATE_EXACT.md
    - 1200002_ORDER_FLOW_API_INVENTORY_PROPOSAL_EXACT.md
    - 1200003_ORDER_FLOW_API_SHIPMENT_AND_DELIVERY_EXACT.md

  if_reader_wants_db_and_execution_gate:
    - 1100009_ORDER_FLOW_DDL_DRAFT_ORDER_CORE.md
    - 1100013_ORDER_FLOW_RLS_SQL_DRAFT.md
    - 1200030_ORDER_FLOW_PRE_EXECUTION_CHECKLIST.md

  if_reader_wants_restart:
    - 9000012_ORDER_FLOW_FINAL_RESTART_GUIDE.md
    - 9000029_ORDER_FLOW_FINAL_RESTART_PROMPT.md

navigation_rule:
  - use bridge files for entry
  - use bible file for deep reading order

