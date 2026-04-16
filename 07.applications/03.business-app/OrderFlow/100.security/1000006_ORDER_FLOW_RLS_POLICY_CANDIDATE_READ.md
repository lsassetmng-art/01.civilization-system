# ============================================================
# ORDER FLOW RLS POLICY CANDIDATE READ
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_required:
- Sato

purpose:
Defines read-side RLS policy candidates for OrderFlow.

read_policy_candidates:

  order_record:
    read_rule:
      - allow read when row company_id equals session company scope
    notes:
      - base anchor for most other scoped reads

  order_scoped_child_tables:
    tables:
      - order_line_item
      - order_customer_snapshot
      - order_source_estimate_link
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
      - shipment_request_line
      - shipment_request_result
      - shipment_execution_record
      - shipment_request_status_history
      - delivery_confirmation_record
      - delivery_confirmation_line
      - order_history_entry
      - order_audit_log
      - order_pending_operation
    read_rule:
      - allow read when linked parent order belongs to session company scope

  notification_event_record:
    read_rule:
      - allow read when notification_event_record.company_id equals session company scope

  order_sync_state:
    read_rule_candidate:
      - restrict to privileged operational use initially
    notes:
      - because record_type and record_id are polymorphic
      - general end-user read may be delayed or narrowed

  closed_order_note:
    read_rule:
      - closed rows remain readable inside same company scope
    write_note:
      - read visibility does not imply write permission

read_design_rules:
  - prefer simple company-scope rules first
  - use parent-order existence checks for order-scoped tables
  - avoid complex role branching in first RLS pass where app layer already handles most role logic

