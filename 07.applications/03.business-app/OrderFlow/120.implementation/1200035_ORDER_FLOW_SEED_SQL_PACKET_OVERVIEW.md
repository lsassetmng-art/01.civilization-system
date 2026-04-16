# ============================================================
# ORDER FLOW SEED SQL PACKET OVERVIEW
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_required:
- Sato

purpose:
Provides local/dev/test seed SQL candidates for OrderFlow.

packet_policy:
- seed only
- local/dev/test oriented
- not for production assumption
- separate from structural migration
- review first before real use in shared environments

packet_files:
- 1200036_ORDER_FLOW_SEED_SQL_COMPANY_AND_ROLES.sql
- 1200037_ORDER_FLOW_SEED_SQL_ORDERS_AND_EXECUTION.sql
- 1200038_ORDER_FLOW_SEED_SQL_SHIPMENT_DELIVERY_NOTIFICATION.sql

coverage_goal:
- company and actor context
- estimate-origin order
- standalone order
- partial shipment
- partial delivery
- overdue notification
- sync failed visibility

