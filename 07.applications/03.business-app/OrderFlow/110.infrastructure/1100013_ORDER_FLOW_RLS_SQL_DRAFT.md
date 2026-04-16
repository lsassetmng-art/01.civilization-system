# ============================================================
# ORDER FLOW RLS SQL DRAFT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_required:
- Sato

purpose:
Draft SQL skeleton for OrderFlow row-level security.
This is not final executable approval.
Session claim function names are placeholders and must be aligned later.

~~~sql
-- ------------------------------------------------------------
-- placeholder assumptions
-- ------------------------------------------------------------
-- app.current_company_id() returns uuid
-- app.is_privileged_ops() returns boolean

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

create policy order_record_select_same_company
on order_record
for select
using (company_id = app.current_company_id());

create policy order_record_insert_same_company
on order_record
for insert
with check (company_id = app.current_company_id());

create policy order_record_update_same_company
on order_record
for update
using (company_id = app.current_company_id())
with check (company_id = app.current_company_id());

create policy notification_event_record_select_same_company
on notification_event_record
for select
using (company_id = app.current_company_id());

create policy notification_event_record_insert_same_company
on notification_event_record
for insert
with check (company_id = app.current_company_id());

create policy notification_event_record_update_same_company
on notification_event_record
for update
using (company_id = app.current_company_id())
with check (company_id = app.current_company_id());

create policy order_line_item_select_by_parent_order
on order_line_item
for select
using (
  exists (
    select 1
    from order_record o
    where o.order_id = order_line_item.order_id
      and o.company_id = app.current_company_id()
  )
);

create policy order_line_item_insert_by_parent_order
on order_line_item
for insert
with check (
  exists (
    select 1
    from order_record o
    where o.order_id = order_line_item.order_id
      and o.company_id = app.current_company_id()
  )
);

create policy order_line_item_update_by_parent_order
on order_line_item
for update
using (
  exists (
    select 1
    from order_record o
    where o.order_id = order_line_item.order_id
      and o.company_id = app.current_company_id()
  )
)
with check (
  exists (
    select 1
    from order_record o
    where o.order_id = order_line_item.order_id
      and o.company_id = app.current_company_id()
  )
);

-- same parent-order pattern should be expanded for:
-- order_customer_snapshot
-- order_source_estimate_link
-- order_status_record
-- order_inventory_check_record
-- order_supply_status_record
-- order_lead_time_record
-- delivery_schedule_calculation_record
-- delivery_schedule_candidate
-- delivery_schedule_confirmed_record
-- customer_delivery_proposal_record
-- customer_delivery_response_record
-- shipment_request_record
-- shipment_request_line
-- shipment_request_result
-- shipment_execution_record
-- shipment_request_status_history
-- delivery_confirmation_record
-- delivery_confirmation_line
-- order_history_entry
-- order_audit_log
-- order_pending_operation

create policy order_sync_state_select_privileged_only
on order_sync_state
for select
using (app.is_privileged_ops());

create policy order_sync_state_insert_privileged_only
on order_sync_state
for insert
with check (app.is_privileged_ops());

create policy order_sync_state_update_privileged_only
on order_sync_state
for update
using (app.is_privileged_ops())
with check (app.is_privileged_ops());

-- delete policies intentionally omitted for normal user path
~~~

notes:
- function names are placeholders
- exact auth claim mapping must be aligned with platform conventions
- this draft is review-first and execution-held
