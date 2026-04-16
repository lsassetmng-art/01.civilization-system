-- ============================================================
-- ORDER FLOW SEED SQL ORDERS AND EXECUTION
-- ============================================================
-- status: draft
-- system: order-flow
-- owner: Boss
-- prepared_by: Zero

insert into order_record (
  order_id, company_id, order_number, order_source_type, order_state,
  customer_id_or_local_ref, order_date, requested_delivery_date,
  internally_promised_date, customer_confirmed_date,
  currency_code, subtotal_amount, tax_amount, total_amount,
  source_estimate_exists, created_by, created_at, updated_at
) values
(
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa1',
  '8f3c2e6a-9c1b-4c7a-a5d2-1c8c4b7f9e12',
  'ORD-2026-000045',
  'from_estimate',
  'customer_confirmed',
  'CUST-ABC-001',
  date '2026-04-12',
  date '2026-04-20',
  date '2026-04-19',
  date '2026-04-12',
  'JPY',
  12000.00,
  1200.00,
  13200.00,
  true,
  '11111111-1111-1111-1111-111111111111',
  timestamptz '2026-04-12 09:00:00+09',
  timestamptz '2026-04-12 11:55:00+09'
),
(
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa2',
  '8f3c2e6a-9c1b-4c7a-a5d2-1c8c4b7f9e12',
  'ORD-2026-000046',
  'standalone',
  'inventory_checked',
  'CUST-XYZ-001',
  date '2026-04-13',
  date '2026-04-25',
  null,
  null,
  'USD',
  1000.00,
  0.00,
  1000.00,
  false,
  '11111111-1111-1111-1111-111111111111',
  timestamptz '2026-04-13 10:00:00+09',
  timestamptz '2026-04-13 10:30:00+09'
),
(
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa3',
  '8f3c2e6a-9c1b-4c7a-a5d2-1c8c4b7f9e12',
  'ORD-2026-000047',
  'from_estimate',
  'closed',
  'CUST-CLOSED-001',
  date '2026-04-01',
  date '2026-04-08',
  date '2026-04-08',
  date '2026-04-03',
  'JPY',
  8000.00,
  800.00,
  8800.00,
  true,
  '55555555-5555-5555-5555-555555555555',
  timestamptz '2026-04-01 09:00:00+09',
  timestamptz '2026-04-09 18:00:00+09'
);

insert into order_line_item (
  order_line_id, order_id, line_no, item_ref_or_local_code, item_name_snapshot,
  ordered_quantity, unit_of_measure, unit_price_amount, currency_code,
  line_subtotal_amount, line_state, customer_line_note, created_at, updated_at
) values
(
  'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbb11',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa1',
  1,
  'ITEM-001',
  'Product A',
  10,
  'pcs',
  1200.00,
  'JPY',
  12000.00,
  'partially_shipped',
  'morning delivery preferred',
  timestamptz '2026-04-12 09:00:00+09',
  timestamptz '2026-04-17 14:00:00+09'
),
(
  'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbb21',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa2',
  1,
  'ITEM-100',
  'Service Plan B',
  2,
  'license',
  500.00,
  'USD',
  1000.00,
  'open',
  null,
  timestamptz '2026-04-13 10:00:00+09',
  timestamptz '2026-04-13 10:00:00+09'
),
(
  'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbb31',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa3',
  1,
  'ITEM-200',
  'Closed Product',
  5,
  'pcs',
  1600.00,
  'JPY',
  8000.00,
  'closed',
  null,
  timestamptz '2026-04-01 09:00:00+09',
  timestamptz '2026-04-09 18:00:00+09'
);

insert into order_customer_snapshot (
  order_customer_snapshot_id, order_id, customer_name_snapshot, customer_display_name_snapshot,
  billing_name_snapshot, shipping_name_snapshot, contact_person_snapshot,
  contact_email_snapshot, contact_phone_snapshot, billing_address_snapshot,
  shipping_address_snapshot, locale_snapshot, snapshot_taken_at
) values
(
  'cccccccc-cccc-cccc-cccc-cccccccccc11',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa1',
  'ABC Trading Co., Ltd.',
  'ABC Trading',
  'ABC Trading Co., Ltd.',
  'ABC Trading Sendai Warehouse',
  'Taro Yamada',
  'taro@example.com',
  '+81-90-0000-0000',
  'billing address text',
  'shipping address text',
  'ja-JP',
  timestamptz '2026-04-12 09:00:00+09'
),
(
  'cccccccc-cccc-cccc-cccc-cccccccccc21',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa2',
  'XYZ Co., Ltd.',
  'XYZ',
  'XYZ Co., Ltd.',
  'XYZ Tokyo Office',
  'Hanako Sato',
  'hanako@example.com',
  '+81-80-0000-0000',
  'billing address text',
  'shipping address text',
  'en-US',
  timestamptz '2026-04-13 10:00:00+09'
),
(
  'cccccccc-cccc-cccc-cccc-cccccccccc31',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa3',
  'Closed Customer Co.',
  'Closed Customer',
  'Closed Customer Co.',
  'Closed Customer Site',
  'Manager Closed',
  'closed@example.com',
  '+81-70-0000-0000',
  'closed billing',
  'closed shipping',
  'ja-JP',
  timestamptz '2026-04-01 09:00:00+09'
);

insert into order_source_estimate_link (
  order_source_estimate_link_id, order_id, source_estimate_id,
  source_estimate_number_snapshot, handoff_type, snapshot_taken_at, linked_by
) values
(
  'dddddddd-dddd-dddd-dddd-dddddddddd11',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa1',
  'eeeeeeee-eeee-eeee-eeee-eeeeeeeeee11',
  'EST-2026-000123',
  'deeplink_copy',
  timestamptz '2026-04-12 09:00:00+09',
  '11111111-1111-1111-1111-111111111111'
),
(
  'dddddddd-dddd-dddd-dddd-dddddddddd31',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa3',
  'eeeeeeee-eeee-eeee-eeee-eeeeeeeeee31',
  'EST-2026-000099',
  'copy',
  timestamptz '2026-04-01 09:00:00+09',
  '55555555-5555-5555-5555-555555555555'
);

insert into order_inventory_check_record (
  order_inventory_check_record_id, order_id, inventory_status, freshness_type,
  inventory_source_type, source_system_name, source_reference_id, summary_note,
  checked_at, checked_by
) values
(
  'f1111111-1111-1111-1111-111111111111',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa1',
  'available',
  'fresh',
  'erp',
  'ERP',
  'INV-CHECK-001',
  'stock confirmed',
  timestamptz '2026-04-12 11:40:00+09',
  '22222222-2222-2222-2222-222222222222'
),
(
  'f2222222-2222-2222-2222-222222222222',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa2',
  'available',
  'cached',
  'manual_confirmation',
  'MANUAL',
  'INV-CHECK-002',
  'manual confirmation',
  timestamptz '2026-04-13 10:20:00+09',
  '22222222-2222-2222-2222-222222222222'
);

insert into order_lead_time_record (
  order_lead_time_record_id, order_id, lead_time_days, lead_time_basis_type,
  lead_time_note, source_inventory_check_record_id, calculated_at, calculated_by
) values
(
  'f3333333-3333-3333-3333-333333333333',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa1',
  3,
  'stock_available',
  'same-week shipment possible',
  'f1111111-1111-1111-1111-111111111111',
  timestamptz '2026-04-12 11:42:00+09',
  '22222222-2222-2222-2222-222222222222'
);

insert into delivery_schedule_calculation_record (
  delivery_schedule_calculation_record_id, order_id, calculation_basis_summary,
  source_lead_time_record_id, source_inventory_check_record_id, calculated_at, calculated_by
) values
(
  'f4444444-4444-4444-4444-444444444444',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa1',
  'lead time and inventory basis',
  'f3333333-3333-3333-3333-333333333333',
  'f1111111-1111-1111-1111-111111111111',
  timestamptz '2026-04-12 11:45:00+09',
  '22222222-2222-2222-2222-222222222222'
);

insert into delivery_schedule_candidate (
  delivery_schedule_candidate_id, order_id, delivery_schedule_calculation_record_id,
  candidate_type, candidate_label, candidate_start_date, candidate_end_date,
  confidence_type, rank_order, proposal_ready_flag, generated_at, generated_by
) values
(
  'f5555555-5555-5555-5555-555555555551',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa1',
  'f4444444-4444-4444-4444-444444444444',
  'single_date',
  'best_case',
  date '2026-04-18',
  date '2026-04-18',
  'high',
  1,
  true,
  timestamptz '2026-04-12 11:45:00+09',
  '22222222-2222-2222-2222-222222222222'
),
(
  'f5555555-5555-5555-5555-555555555552',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa1',
  'f4444444-4444-4444-4444-444444444444',
  'date_range',
  'safe_range',
  date '2026-04-19',
  date '2026-04-21',
  'medium',
  2,
  true,
  timestamptz '2026-04-12 11:45:00+09',
  '22222222-2222-2222-2222-222222222222'
);

insert into customer_delivery_proposal_record (
  customer_delivery_proposal_record_id, order_id, source_candidate_id,
  proposal_date_or_start, proposal_end_date, proposal_note,
  proposal_channel_type, proposal_status, recorded_at, recorded_by
) values
(
  'f6666666-6666-6666-6666-666666666666',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa1',
  'f5555555-5555-5555-5555-555555555552',
  date '2026-04-19',
  date '2026-04-21',
  'delivery between Sunday and Tuesday',
  'manual_internal_record',
  'accepted',
  timestamptz '2026-04-12 11:50:00+09',
  '11111111-1111-1111-1111-111111111111'
);

insert into customer_delivery_response_record (
  customer_delivery_response_record_id, order_id, customer_delivery_proposal_record_id,
  response_type, response_date, operator_note, recorded_at, recorded_by
) values
(
  'f7777777-7777-7777-7777-777777777777',
  'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaa1',
  'f6666666-6666-6666-6666-666666666666',
  'accepted',
  date '2026-04-12',
  'customer accepted by phone',
  timestamptz '2026-04-12 11:55:00+09',
  '11111111-1111-1111-1111-111111111111'
);
