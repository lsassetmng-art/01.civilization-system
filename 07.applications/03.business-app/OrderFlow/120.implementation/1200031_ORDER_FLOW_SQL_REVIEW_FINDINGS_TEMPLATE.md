# ============================================================
# ORDER FLOW SQL REVIEW FINDINGS TEMPLATE
# ============================================================

status: template
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Template for recording Sato review findings.

review_summary:
  overall_result:
    - pending

  reviewed_files:
    - 1200026_ORDER_FLOW_SQL_CANDIDATE_PHASE_1_ORDER_CORE.sql
    - 1200027_ORDER_FLOW_SQL_CANDIDATE_PHASE_2_EXECUTION.sql
    - 1200028_ORDER_FLOW_SQL_CANDIDATE_PHASE_3_SHIPMENT_HISTORY.sql

  findings:

    order_core:
      result:
        - pending
      notes:
        - TBD

    execution_and_schedule:
      result:
        - pending
      notes:
        - TBD

    shipment_delivery_history:
      result:
        - pending
      notes:
        - TBD

  required_changes:
    - TBD

  optional_improvements:
    - TBD

  deferred_topics:
    - schema exact placement
    - trigger/update strategy
    - RLS exact design
    - migration packaging
    - app-local seed/test data strategy

  final_recommendation:
    - pending

