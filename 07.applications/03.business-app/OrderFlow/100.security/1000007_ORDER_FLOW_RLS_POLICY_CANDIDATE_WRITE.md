# ============================================================
# ORDER FLOW RLS POLICY CANDIDATE WRITE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_required:
- Sato

purpose:
Defines write-side RLS policy candidates for OrderFlow.

write_policy_candidates:

  general_insert_rule:
    rule:
      - inserted row must belong to session company scope directly or through valid parent order
    forbidden:
      - inserting child rows linked to foreign-company parent order

  general_update_rule:
    rule:
      - update allowed only inside session company scope
    additional_expectation:
      - app layer enforces business-role and state-transition rules
    note:
      - DB layer is primarily tenant isolation layer in first pass

  general_delete_rule:
    default:
      - no ordinary delete from end-user path
    note:
      - append/history style preferred
      - destructive deletes are not part of normal business operations

  order_record:
    insert_rule:
      - company_id must equal session company scope
    update_rule:
      - only same-company rows
    delete_rule:
      - deny by default for user path

  order_scoped_child_tables:
    insert_update_rule:
      - allow only when parent order belongs to session company scope
    delete_rule:
      - deny by default for user path
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

  notification_event_record:
    insert_update_rule:
      - allow only within same company scope
    delete_rule:
      - deny by default for user path

  order_sync_state:
    write_rule_candidate:
      - privileged operational path only in first pass
    note:
      - sync/system visibility may be better handled by service role or controlled backend function

write_design_rules:
  - tenant isolation first
  - business workflow protection mostly at app/service layer in first pass
  - deny ordinary deletes
  - keep privileged/system-write paths explicit

