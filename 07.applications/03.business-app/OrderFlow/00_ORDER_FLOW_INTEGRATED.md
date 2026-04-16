# ============================================================
# ORDER FLOW INTEGRATED
# ============================================================

status: regenerated-post-review-integrated
system: order-flow
owner: Boss
prepared_by: Zero
review_confirmed:
- Sato

# ============================================================
# 0. definition
# ============================================================

OrderFlow is the order execution and delivery coordination front.

It exists between:
- EstimateCreator as the estimate-side front
and
- InvoiceFlow or equivalent billing-side flow as the downstream handoff target.

OrderFlow is not:
- a quote-authoring app
- a generic ERP clone
- a shipment-only tool
- an inventory-only tool
- a billing-side app

# ============================================================
# 1. fixed assumptions
# ============================================================

fixed_assumptions:
  - multilingual ready from day 0
  - multicurrency ready from day 0
  - iPhone supported
  - Android supported
  - PC supported
  - tablet supported

# ============================================================
# 2. business role
# ============================================================

business_role:
  - create order from estimate
  - create standalone order
  - retain customer snapshot
  - manage order lines
  - perform fulfillment-context inventory confirmation
  - calculate lead time
  - calculate delivery candidates
  - create customer proposal
  - record customer response
  - create shipment request
  - track shipment execution visibility
  - record delivery confirmation
  - perform explicit order closure
  - provide downstream billing handoff boundary

# ============================================================
# 3. upstream / downstream boundaries
# ============================================================

upstream_boundary:
  EstimateCreator:
    owns:
      - estimate
      - rough estimate
      - sales memo
      - quote sharing
      - quote-context inventory reference

orderflow_boundary:
  owns:
    - order creation from estimate
    - standalone order creation
    - execution-context inventory confirmation
    - delivery coordination
    - proposal / agreement visibility
    - shipment request and tracking
    - delivery confirmation
    - explicit closure

downstream_boundary:
  InvoiceFlow_or_equivalent:
    receives:
      - billing-ready candidate handoff
    owns:
      - invoice identity
      - billing lifecycle
      - billing-side acceptance rules

boundary_rules:
  - estimate_id and order_id are separate
  - order_id and invoice_id are separate
  - same-record promotion is forbidden
  - copy / handoff only
  - source traceability must remain visible

# ============================================================
# 4. ERP stance
# ============================================================

erp_present_mode:
  - OrderFlow remains execution front
  - ERP may act as truth/source for selected areas
  - sync visibility remains explicit

erp_absent_mode:
  - OrderFlow remains usable without ERP
  - app_local / manual / external_reference operation is allowed
  - business responsibility does not change

principle:
  - responsibility stays fixed
  - connection target changes

# ============================================================
# 5. lifecycle
# ============================================================

order_lifecycle:
  - draft
  - confirmed
  - inventory_checked
  - delivery_date_calculated
  - customer_proposed
  - customer_confirmed
  - shipment_requested
  - shipped
  - delivered
  - closed

exception_or_terminal_state:
  - canceled

partial_policy:
  - partial shipment allowed
  - partial delivery allowed
  - remaining scope must stay visible
  - close must be explicit

# ============================================================
# 6. state families
# ============================================================

state_families:

  order_state:
    - draft
    - confirmed
    - inventory_checked
    - delivery_date_calculated
    - customer_proposed
    - customer_confirmed
    - shipment_requested
    - shipped
    - delivered
    - closed
    - canceled

  inventory_status:
    - not_checked
    - available
    - partially_available
    - unavailable
    - replenishment_required
    - stale

  customer_proposal_status:
    - not_proposed
    - proposed
    - revision_requested
    - accepted
    - rejected

  shipment_status:
    - not_requested
    - requested
    - accepted
    - rejected
    - partially_shipped
    - shipped

  delivery_status:
    - not_confirmed
    - partially_delivered
    - delivered
    - delivery_confirmed

# ============================================================
# 7. exact model families
# ============================================================

model_families:
  - order_record
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
  - notification_event_record
  - order_sync_state
  - order_pending_operation

# ============================================================
# 8. screen structure
# ============================================================

screen_groups:
  - entry_and_navigation
  - order_entry_and_edit
  - inventory_and_schedule
  - customer_proposal
  - shipment
  - delivery_confirmation
  - closure_and_history

main_hub:
  - order_detail_screen

home_role:
  - work triage hub

primary_screen_set:
  - home_screen
  - order_list_screen
  - order_detail_screen
  - create_order_from_estimate_screen
  - create_standalone_order_screen
  - order_header_edit_screen
  - order_line_edit_screen
  - customer_snapshot_screen
  - inventory_check_screen
  - lead_time_calculation_screen
  - delivery_candidate_screen
  - customer_proposal_screen
  - proposal_history_screen
  - customer_response_record_screen
  - shipment_request_screen
  - shipment_request_detail_screen
  - shipment_status_board_screen
  - delivery_confirmation_input_screen
  - partial_delivery_confirmation_screen
  - order_history_screen
  - order_closure_screen

# ============================================================
# 9. API / validation / permission layer
# ============================================================

fixed_contract_layers:
  - API request / response exact
  - operator action matrix
  - validation rules
  - role / permission matrix
  - authorization and scope rules
  - screen payload mapping
  - list query / filter / sort
  - notification query
  - home summary query
  - downstream InvoiceFlow receiver API candidate

primary_roles:
  - sales_operator
  - order_coordinator
  - warehouse_operator
  - delivery_confirmation_operator
  - order_manager
  - admin_operator

authorization_principle:
  - role-based
  - scope-bound
  - company isolation mandatory
  - route and record access must be validated

# ============================================================
# 10. notification / reminder / dashboard layer
# ============================================================

notification_visibility:
  - customer_response_waiting
  - shipment_request_waiting
  - shipment_request_rejected
  - delivery_confirmation_waiting
  - order_overdue
  - proposal_overdue
  - shipment_overdue
  - delivery_overdue
  - sync_failed
  - sync_pending_too_long
  - manual_attention_required

dashboard_role:
  - show current operational situation quickly
  - reveal next work
  - provide direct access to high-frequency actions

dashboard_sections:
  - summary_kpi_section
  - action_needed_section
  - overdue_risk_section
  - recent_orders_section
  - shipment_progress_section
  - quick_action_section

# ============================================================
# 11. data / table / DDL layer
# ============================================================

data_layer_fixed:
  - table candidates
  - FK candidates
  - relationship overview
  - DDL draft candidates
  - SQL execution candidate packet
  - RLS candidate direction
  - migration packaging
  - seed strategy

recommended_migration_ready_files:
  - 999.migration-ready/0001_order_flow_order_core.sql
  - 999.migration-ready/0002_order_flow_execution_and_schedule.sql
  - 999.migration-ready/0003_order_flow_shipment_and_delivery_history.sql
  - 999.migration-ready/0004_order_flow_rls.sql
  - 999.migration-ready/0005_order_flow_seed_local_dev.sql

# ============================================================
# 12. review and execution posture
# ============================================================

review_posture:
  - Sato review passed
  - no blocking structural issue
  - SQL packet is treated as final execution candidate source

execution_posture:
  - execution is still a separate go decision
  - review pass does not equal live execution approval
  - additive only posture remains fixed

go_gate_requires:
  - Boss go decision
  - target schema confirmation
  - migration placement confirmation
  - final RLS claim mapping confirmation

# ============================================================
# 13. seed posture
# ============================================================

seed_posture:
  - local/dev/test oriented
  - JPY and USD examples included
  - estimate-origin and standalone examples included
  - partial shipment and partial delivery examples included
  - sync failed visibility example included

seed_status:
  - good enough for local/dev/test candidate use
  - further change only if schema naming changes later

# ============================================================
# 14. downstream InvoiceFlow handoff
# ============================================================

downstream_handoff:
  endpoint_candidate:
    - create_invoice_from_order_handoff

required_meaning:
  - company_id
  - order identity
  - closure context
  - customer billing summary
  - money summary
  - delivered scope summary

fixed_rules:
  - OrderFlow remains execution authority only
  - InvoiceFlow becomes billing-side authority
  - duplicate invoice prevention is receiver-side policy
  - receiver may reject non-billing-ready payloads

# ============================================================
# 15. intentionally separated / deferred
# ============================================================

intentionally_separated:
  - exact common component design

intentionally_deferred:
  - final live execution approval
  - final InvoiceFlow-side canonical implementation
  - final platform-specific RLS claim function naming if environment differs

# ============================================================
# 16. final assessment
# ============================================================

final_assessment:
  design_phase:
    - finalized

  review_phase:
    - passed

  execution_phase:
    - candidate_ready_but_go_separate

  restart_readiness:
    - very_high

official_one_line_status:
  - OrderFlow is design-finalized after review, with execution handled as a separate go decision

