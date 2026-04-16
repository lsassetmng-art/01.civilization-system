# ============================================================
# ORDER FLOW FINAL READING ORDER
# ============================================================

status: draft-final-reading-order
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Provides the shortest reliable reading path for a future reader.

final_reading_order:

  stage_1_orientation:
    - 9000016_ORDER_FLOW_OFFICIAL_LEDGER.md
    - 000_COMMON_DESIGN_OVERVIEW.md
    - 00_ORDER_FLOW_INTEGRATED.md
    - 9000021_ORDER_FLOW_FINAL_INTEGRATED_CANONICAL_CANDIDATE.md

  stage_2_core_meaning:
    - 0200001_ORDER_FLOW_POSITIONING_ARCHITECTURE.md
    - 0200003_ORDER_FLOW_BOUNDARY_ARCHITECTURE.md
    - 0300001_ORDER_FLOW_ORDER_STATE_EXACT_MODEL.md
    - 0500001_ORDER_FLOW_ORDER_LIFECYCLE_FLOW.md

  stage_3_contract_and_behavior:
    - 0900002_ORDER_FLOW_ORDER_ENTRY_AND_DETAIL_SCREEN_EXACT.md
    - 1200001_ORDER_FLOW_API_ORDER_CREATE_EXACT.md
    - 1200009_ORDER_FLOW_VALIDATION_RULES_ORDER_ENTRY.md
    - 1000002_ORDER_FLOW_PERMISSION_MATRIX_ORDER_AND_EXECUTION.md

  stage_4_db_and_execution_hold:
    - 1100001_ORDER_FLOW_TABLE_CANDIDATE_ORDER_CORE.md
    - 1100009_ORDER_FLOW_DDL_DRAFT_ORDER_CORE.md
    - 1100013_ORDER_FLOW_RLS_SQL_DRAFT.md
    - 1200030_ORDER_FLOW_PRE_EXECUTION_CHECKLIST.md
    - 9000014_ORDER_FLOW_REVIEW_TO_EXECUTION_GATE.md

  stage_5_restart_or_continue:
    - 9000012_ORDER_FLOW_FINAL_RESTART_GUIDE.md
    - 9000007_ORDER_FLOW_NEXT_CHAT_HANDOFF.md
    - 9000019_ORDER_FLOW_OFFICIAL_NEXT_ACTIONS.md

