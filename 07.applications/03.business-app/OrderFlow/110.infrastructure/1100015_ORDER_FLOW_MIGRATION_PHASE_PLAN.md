# ============================================================
# ORDER FLOW MIGRATION PHASE PLAN
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_required:
- Sato

purpose:
Defines the recommended migration phase plan for OrderFlow.

migration_phase_plan:

  phase_1_order_core:
    includes:
      - order_record
      - order_line_item
      - order_customer_snapshot
      - order_source_estimate_link
      - order_status_record
    reason:
      - foundational anchor layer for all later tables

  phase_2_execution_and_schedule:
    includes:
      - order_inventory_check_record
      - order_supply_status_record
      - order_lead_time_record
      - delivery_schedule_calculation_record
      - delivery_schedule_candidate
      - delivery_schedule_confirmed_record
      - customer_delivery_proposal_record
      - customer_delivery_response_record
    reason:
      - execution planning depends on order core

  phase_3_shipment_and_delivery:
    includes:
      - shipment_request_record
      - shipment_request_line
      - shipment_request_result
      - shipment_execution_record
      - shipment_request_status_history
      - delivery_confirmation_record
      - delivery_confirmation_line
    reason:
      - downstream fulfillment depends on prior order and schedule layers

  phase_4_history_notification_sync:
    includes:
      - order_history_entry
      - order_audit_log
      - notification_event_record
      - order_pending_operation
      - order_sync_state
    reason:
      - support and operational visibility layer comes after primary business tables

  phase_5_rls:
    includes:
      - enable row level security
      - select / insert / update policy draft packaging
    reason:
      - policies should attach after structural layer exists

phase_design_rules:
  - each phase should be reviewable independently
  - each phase should be executable without destructive dependency on later phases
  - rollback thinking may be documented later, but initial packaging stays additive

