-- sourced from 1100013_ORDER_FLOW_RLS_SQL_DRAFT.md
-- placeholder functions must be aligned before actual use

alter table order_record enable row level security;
alter table order_line_item enable row level security;
alter table order_customer_snapshot enable row level security;
alter table order_source_estimate_link enable row level security;
alter table order_status_record enable row level security;
alter table order_inventory_check_record enable row level security;
alter table order_supply_status_record enable row level security;
alter table order_lead_time_record enable row level security;
alter table delivery_schedule_calculation_record enable row level security;
alter table delivery_schedule_candidate enable row level security;
alter table delivery_schedule_confirmed_record enable row level security;
alter table customer_delivery_proposal_record enable row level security;
alter table customer_delivery_response_record enable row level security;
alter table shipment_request_record enable row level security;
alter table shipment_request_line enable row level security;
alter table shipment_request_result enable row level security;
alter table shipment_execution_record enable row level security;
alter table shipment_request_status_history enable row level security;
alter table delivery_confirmation_record enable row level security;
alter table delivery_confirmation_line enable row level security;
alter table order_history_entry enable row level security;
alter table order_audit_log enable row level security;
alter table notification_event_record enable row level security;
alter table order_pending_operation enable row level security;
alter table order_sync_state enable row level security;
