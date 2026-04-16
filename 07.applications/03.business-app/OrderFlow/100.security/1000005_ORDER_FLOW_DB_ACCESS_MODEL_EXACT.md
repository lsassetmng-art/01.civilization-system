# ============================================================
# ORDER FLOW DB ACCESS MODEL EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_required:
- Sato

purpose:
Defines the database-layer access model for OrderFlow.

db_access_model:

  primary_principles:
    - company scope isolation is mandatory
    - application roles do not bypass tenant scope
    - read and write concerns are separated
    - closed-order visibility is broader than closed-order editability
    - administrative override must stay explicit and auditable

  access_layers:
    app_layer:
      role:
        - screen and action permission control
      note:
        - defined in OrderFlow permission design

    db_layer:
      role:
        - row-level access isolation
        - write protection by company scope
        - privileged override separation

  actor_context_expectation:
    required_context:
      - actor_ref
      - company_id
      - role_set
    note:
      - DB-layer evaluation assumes trusted session claims or equivalent context

  core_scope_rule:
    read_scope:
      - actor may read only rows belonging to authorized company scope
    write_scope:
      - actor may write only rows belonging to authorized company scope
    forbidden:
      - cross-company read
      - cross-company write
      - blind service-style write from user path without explicit privileged route

  table_scope_strategy:
    company_direct_tables:
      - order_record
      - notification_event_record
    order_scoped_tables:
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
    polymorphic_sync_table:
      - order_sync_state

  recommended_pattern:
    - company_id held directly where natural
    - order-scoped tables inherit company scope through parent order_record
    - privileged maintenance paths should use explicit service path, not ordinary end-user path

