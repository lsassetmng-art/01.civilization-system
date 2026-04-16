# ============================================================
# ORDER FLOW FINAL MIGRATION PLACEMENT
# ============================================================

status: final-migration-placement
system: order-flow
owner: Boss
prepared_by: Zero
review_confirmed:
- Sato

purpose:
Defines the final recommended migration placement for OrderFlow.

final_migration_placement:

  target_folder_candidate:
    - 01.civilization-system/07.applications/OrderFlow/999.migration-ready

  recommended_files:
    - 0001_order_flow_order_core.sql
    - 0002_order_flow_execution_and_schedule.sql
    - 0003_order_flow_shipment_and_delivery_history.sql
    - 0004_order_flow_rls.sql
    - 0005_order_flow_seed_local_dev.sql

  source_mapping:
    0001_order_flow_order_core.sql:
      from:
        - 1200026_ORDER_FLOW_SQL_CANDIDATE_PHASE_1_ORDER_CORE.sql

    0002_order_flow_execution_and_schedule.sql:
      from:
        - 1200027_ORDER_FLOW_SQL_CANDIDATE_PHASE_2_EXECUTION.sql

    0003_order_flow_shipment_and_delivery_history.sql:
      from:
        - 1200028_ORDER_FLOW_SQL_CANDIDATE_PHASE_3_SHIPMENT_HISTORY.sql

    0004_order_flow_rls.sql:
      from:
        - 1100013_ORDER_FLOW_RLS_SQL_DRAFT.md

    0005_order_flow_seed_local_dev.sql:
      from:
        - 1200036_ORDER_FLOW_SEED_SQL_COMPANY_AND_ROLES.sql
        - 1200037_ORDER_FLOW_SEED_SQL_ORDERS_AND_EXECUTION.sql
        - 1200038_ORDER_FLOW_SEED_SQL_SHIPMENT_DELIVERY_NOTIFICATION.sql

placement_rules:
  - structural migrations first
  - RLS after structural migrations
  - seed kept last and local/dev oriented
  - no seed mixed into structural files

