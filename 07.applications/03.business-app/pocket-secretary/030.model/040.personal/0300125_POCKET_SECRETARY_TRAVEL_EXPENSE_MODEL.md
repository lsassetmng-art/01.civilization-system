# ============================================================
# POCKET SECRETARY TRAVEL EXPENSE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents travel expense records managed by PocketSecretary.

fields:
- travel_expense_id
- user_id
- trip_date
- departure_text
- arrival_text
- route_text
- amount
- currency_code
- note_text
- aggregation_month
- draft_status
- created_at
- updated_at

rules:
- travel expense begins as local working data
- monthly aggregation and ERP-facing use remain distinct steps
