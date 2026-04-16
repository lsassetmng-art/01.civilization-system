-- ============================================================
-- ORDER FLOW SEED SQL SHIPMENT DELIVERY NOTIFICATION
-- ============================================================
-- status: draft
-- system: order-flow
-- owner: Boss
-- prepared_by: Zero

insert into shipment_request_record (
  shipment_request_record_id, order_id, shipment_request_number, shipment_status,
  request_scope_type, requested_ship_date, warehouse_or_execution_target_ref,
  shipment_instruction_note, requested_at, requested_by
) values
(
  'g1111111-1111-1111-1111-111111111111',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa1',
  'SHP-REQ-2026-000021',
  'partially_shipped',
  'selected_lines',
  date '2026-04-17',
  'SENDAI-WH-01',
  'keep upright',
  timestamptz '2026-04-12 12:00:00+09',
  '22222222-2222-2222-2222-222222222222'
);

insert into shipment_request_line (
  shipment_request_line_id, shipment_request_record_id, order_line_id,
  requested_quantity, unit_of_measure, partial_reason
) values
(
  'g2222222-2222-2222-2222-222222222222',
  'g1111111-1111-1111-1111-111111111111',
  'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbb11',
  6,
  'pcs',
  'split shipment requested'
);

insert into shipment_request_result (
  shipment_request_result_id, shipment_request_record_id, result_type,
  result_note, result_recorded_at, result_recorded_by
) values
(
  'g3333333-3333-3333-3333-333333333333',
  'g1111111-1111-1111-1111-111111111111',
  'accepted',
  'warehouse accepted request',
  timestamptz '2026-04-12 12:05:00+09',
  '33333333-3333-3333-3333-333333333333'
);

insert into shipment_execution_record (
  shipment_execution_record_id, shipment_request_record_id, shipment_execution_date,
  shipment_execution_scope_type, carrier_name_snapshot, tracking_number_snapshot,
  shipment_note, recorded_at, recorded_by
) values
(
  'g4444444-4444-4444-4444-444444444444',
  'g1111111-1111-1111-1111-111111111111',
  date '2026-04-17',
  'partial_request',
  'Yamato',
  'TRACK-1234567890',
  '6 pcs shipped',
  timestamptz '2026-04-17 14:00:00+09',
  '33333333-3333-3333-3333-333333333333'
);

insert into shipment_request_status_history (
  shipment_request_status_history_id, shipment_request_record_id,
  previous_shipment_status, new_shipment_status, changed_at, changed_by, related_execution_record_id
) values
(
  'g5555555-5555-5555-5555-555555555551',
  'g1111111-1111-1111-1111-111111111111',
  'requested',
  'accepted',
  timestamptz '2026-04-12 12:05:00+09',
  '33333333-3333-3333-3333-333333333333',
  null
),
(
  'g5555555-5555-5555-5555-555555555552',
  'g1111111-1111-1111-1111-111111111111',
  'accepted',
  'partially_shipped',
  timestamptz '2026-04-17 14:00:00+09',
  '33333333-3333-3333-3333-333333333333',
  'g4444444-4444-4444-4444-444444444444'
);

insert into delivery_confirmation_record (
  delivery_confirmation_record_id, order_id, delivery_status,
  confirmation_date, customer_receipt_note, confirmed_by, confirmed_at
) values
(
  'g6666666-6666-6666-6666-666666666666',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa1',
  'partially_delivered',
  date '2026-04-19',
  'first batch received',
  '44444444-4444-4444-4444-444444444444',
  timestamptz '2026-04-19 10:00:00+09'
);

insert into delivery_confirmation_line (
  delivery_confirmation_line_id, delivery_confirmation_record_id, order_line_id,
  confirmed_delivered_quantity, unit_of_measure, line_delivery_note
) values
(
  'g7777777-7777-7777-7777-777777777777',
  'g6666666-6666-6666-6666-666666666666',
  'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbb11',
  6,
  'pcs',
  'good condition'
);

insert into order_history_entry (
  order_history_entry_id, order_id, history_entry_type, occurred_at,
  actor_display_name, history_label, history_detail_text, related_record_type, related_record_id
) values
(
  'h1111111-1111-1111-1111-111111111111',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa1',
  'customer_proposed',
  timestamptz '2026-04-12 11:50:00+09',
  'Zero Operator',
  'Customer proposal recorded',
  'Proposed delivery window 2026-04-19 to 2026-04-21',
  'customer_delivery_proposal_record',
  'f6666666-6666-6666-6666-666666666666'
),
(
  'h2222222-2222-2222-2222-222222222222',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa1',
  'shipment_executed',
  timestamptz '2026-04-17 14:00:00+09',
  'Warehouse Operator',
  'Shipment executed',
  '6 pcs shipped',
  'shipment_execution_record',
  'g4444444-4444-4444-4444-444444444444'
);

insert into order_audit_log (
  order_audit_log_id, order_id, audit_event_type, actor_ref,
  occurred_at, summary_text, related_record_type, related_record_id
) values
(
  'h3333333-3333-3333-3333-333333333333',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa1',
  'shipment_status_changed',
  '33333333-3333-3333-3333-333333333333',
  timestamptz '2026-04-17 14:00:00+09',
  'Shipment status moved to partially_shipped',
  'shipment_request_status_history',
  'g5555555-5555-5555-5555-555555555552'
);

insert into notification_event_record (
  notification_event_id, company_id, order_id, notification_event_type,
  notification_level, notification_title, notification_message,
  event_occurred_at, read_state, due_at
) values
(
  'h4444444-4444-4444-4444-444444444441',
  '8f3c2e6a-9c1b-4c7a-a5d2-1c8c4b7f9e12',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa1',
  'delivery_confirmation_waiting',
  'warning',
  'Delivery confirmation follow-up',
  'Partial shipment exists and delivery follow-up is required',
  timestamptz '2026-04-18 09:00:00+09',
  'unread',
  timestamptz '2026-04-19 09:00:00+09'
),
(
  'h4444444-4444-4444-4444-444444444442',
  '8f3c2e6a-9c1b-4c7a-a5d2-1c8c4b7f9e12',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa2',
  'sync_failed',
  'critical',
  'ERP sync failed',
  'Local save succeeded but external ERP sync failed',
  timestamptz '2026-04-13 10:40:00+09',
  'unread',
  timestamptz '2026-04-13 10:45:00+09'
);

insert into order_sync_state (
  order_sync_state_id, record_type, record_id, sync_state_type,
  target_system_name, recorded_at, last_attempt_at, last_error_code, last_error_note
) values
(
  'h5555555-5555-5555-5555-555555555555',
  'order_record',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa2',
  'failed',
  'ERP',
  timestamptz '2026-04-13 10:40:00+09',
  timestamptz '2026-04-13 10:40:00+09',
  'erp_timeout',
  'timeout during sync'
);

insert into order_pending_operation (
  order_pending_operation_id, order_id, operation_type, operation_scope_type,
  payload_reference, retry_count, current_pending_state, queued_at, last_attempt_at, last_error_note
) values
(
  'h6666666-6666-6666-6666-666666666666',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa2',
  'sync_to_erp',
  'order_header',
  'payload://orderflow/order/aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa2',
  1,
  'queued',
  timestamptz '2026-04-13 10:35:00+09',
  timestamptz '2026-04-13 10:40:00+09',
  'timeout during sync'
);
