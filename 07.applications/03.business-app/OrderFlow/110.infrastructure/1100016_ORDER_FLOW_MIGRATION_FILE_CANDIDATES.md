# ============================================================
# ORDER FLOW MIGRATION FILE CANDIDATES
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_required:
- Sato

purpose:
Defines candidate migration file breakdown for OrderFlow.

migration_file_candidates:

  - candidate_file_name: 0001_order_flow_order_core.sql
    phase:
      - phase_1_order_core
    contains:
      - order_record
      - order_line_item
      - order_customer_snapshot
      - order_source_estimate_link
      - order_status_record

  - candidate_file_name: 0002_order_flow_execution_and_schedule.sql
    phase:
      - phase_2_execution_and_schedule
    contains:
      - order_inventory_check_record
      - order_supply_status_record
      - order_lead_time_record
      - delivery_schedule_calculation_record
      - delivery_schedule_candidate
      - delivery_schedule_confirmed_record
      - customer_delivery_proposal_record
      - customer_delivery_response_record

  - candidate_file_name: 0003_order_flow_shipment_and_delivery.sql
    phase:
      - phase_3_shipment_and_delivery
    contains:
      - shipment_request_record
      - shipment_request_line
      - shipment_request_result
      - shipment_execution_record
      - shipment_request_status_history
      - delivery_confirmation_record
      - delivery_confirmation_line

  - candidate_file_name: 0004_order_flow_history_notification_sync.sql
    phase:
      - phase_4_history_notification_sync
    contains:
      - order_history_entry
      - order_audit_log
      - notification_event_record
      - order_pending_operation
      - order_sync_state

  - candidate_file_name: 0005_order_flow_rls.sql
    phase:
      - phase_5_rls
    contains:
      - rls enable statements
      - select policies
      - insert policies
      - update policies

file_packaging_notes:
  - numbering is candidate only
  - exact timestamp or migration engine naming remains undecided
  - seeds and fixtures should not be mixed into structural migrations

