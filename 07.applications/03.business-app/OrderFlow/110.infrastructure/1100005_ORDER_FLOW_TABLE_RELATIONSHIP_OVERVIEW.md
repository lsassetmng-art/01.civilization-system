# ============================================================
# ORDER FLOW TABLE RELATIONSHIP OVERVIEW
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines high-level table relationships before DDL exact work.

relationship_overview:

  order_record:
    has_many:
      - order_line_item
      - order_status_record
      - order_inventory_check_record
      - order_supply_status_record
      - order_lead_time_record
      - delivery_schedule_calculation_record
      - delivery_schedule_candidate
      - delivery_schedule_confirmed_record
      - customer_delivery_proposal_record
      - customer_delivery_response_record
      - shipment_request_record
      - delivery_confirmation_record
      - order_history_entry
      - order_audit_log
      - order_pending_operation
      - notification_event_record
    has_one_or_zero:
      - order_customer_snapshot
      - order_source_estimate_link

  delivery_schedule_calculation_record:
    has_many:
      - delivery_schedule_candidate

  customer_delivery_proposal_record:
    has_many:
      - customer_delivery_response_record

  shipment_request_record:
    has_many:
      - shipment_request_line
      - shipment_request_result
      - shipment_execution_record
      - shipment_request_status_history

  delivery_confirmation_record:
    has_many:
      - delivery_confirmation_line

relationship_design_rules:
  - order_record is the primary business anchor
  - child histories are append-oriented where possible
  - proposal and response stay separate
  - shipment request, result, execution, and status history stay separate
  - summary reconstruction should be possible from child tables

