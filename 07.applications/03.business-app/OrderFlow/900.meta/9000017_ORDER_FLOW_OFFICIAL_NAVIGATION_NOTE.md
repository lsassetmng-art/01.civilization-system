# ============================================================
# ORDER FLOW OFFICIAL NAVIGATION NOTE
# ============================================================

status: draft-navigation
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Explains where to start depending on the reader's goal.

navigation_paths:

  if_you_want_full_picture:
    start_from:
      - 000_COMMON_DESIGN_OVERVIEW.md
      - 00_ORDER_FLOW_INTEGRATED.md
      - 9000001_ORDER_FLOW_DESIGN_BIBLE.md

  if_you_want_db_structure:
    start_from:
      - 1100001_ORDER_FLOW_TABLE_CANDIDATE_ORDER_CORE.md
      - 1100005_ORDER_FLOW_TABLE_RELATIONSHIP_OVERVIEW.md
      - 1100009_ORDER_FLOW_DDL_DRAFT_ORDER_CORE.md
      - 1100013_ORDER_FLOW_RLS_SQL_DRAFT.md

  if_you_want_api_and_ui_contract:
    start_from:
      - 1200001_ORDER_FLOW_API_ORDER_CREATE_EXACT.md
      - 1200013_ORDER_FLOW_SCREEN_PAYLOAD_MAPPING_ORDER_ENTRY.md
      - 0900002_ORDER_FLOW_ORDER_ENTRY_AND_DETAIL_SCREEN_EXACT.md

  if_you_want_review_and_execution_gate:
    start_from:
      - 1200025_ORDER_FLOW_SQL_REVIEW_PACKET_OVERVIEW.md
      - 1200030_ORDER_FLOW_PRE_EXECUTION_CHECKLIST.md
      - 1100017_ORDER_FLOW_MIGRATION_EXECUTION_GUARD.md
      - 9000014_ORDER_FLOW_REVIEW_TO_EXECUTION_GATE.md

  if_you_want_next_chat_restart:
    start_from:
      - 9000007_ORDER_FLOW_NEXT_CHAT_HANDOFF.md
      - 9000012_ORDER_FLOW_FINAL_RESTART_GUIDE.md

