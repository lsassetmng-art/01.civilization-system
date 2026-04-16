# ============================================================
# ORDER FLOW EXECUTION SQL FINAL PACKET
# ============================================================

status: final-execution-candidate
system: order-flow
owner: Boss
prepared_by: Zero
review_confirmed:
- Sato

purpose:
Marks the final SQL packet set for execution-candidate use.

final_execution_packet:
  structural_sql:
    - 1200026_ORDER_FLOW_SQL_CANDIDATE_PHASE_1_ORDER_CORE.sql
    - 1200027_ORDER_FLOW_SQL_CANDIDATE_PHASE_2_EXECUTION.sql
    - 1200028_ORDER_FLOW_SQL_CANDIDATE_PHASE_3_SHIPMENT_HISTORY.sql

  policy_sql:
    - 1100013_ORDER_FLOW_RLS_SQL_DRAFT.md

  packaging_reference:
    - 1100014_ORDER_FLOW_MIGRATION_PACKAGING_OVERVIEW.md
    - 1100015_ORDER_FLOW_MIGRATION_PHASE_PLAN.md
    - 1100016_ORDER_FLOW_MIGRATION_FILE_CANDIDATES.md

execution_candidate_rule:
  - these are now treated as final execution-candidate sources
  - migration repository formatting may still wrap them
  - business meaning is fixed
  - structural re-review is not required unless later scope changes

