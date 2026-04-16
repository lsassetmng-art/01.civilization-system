# ============================================================
# DASHBOARD INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the dashboard widget structure and actions.

screen_id: IF-SCR-010

main_widgets:

- widget_name: invoice_due_today
  display:
  - count
  - total_amount
  - currency_group_summary
  action:
  - open filtered invoice list

- widget_name: payment_waiting_count
  display:
  - count
  - total_outstanding_amount
  action:
  - open payment waiting list

- widget_name: overdue_count
  display:
  - count
  - overdue_total_amount
  - max_overdue_days
  action:
  - open overdue list

- widget_name: priority_collection_queue
  display:
  - top priority invoices
  - priority rank
  - next action date
  - overdue days
  action:
  - open collection detail

- widget_name: customer_outstanding_top_list
  display:
  - customer name
  - outstanding amount
  - overdue amount
  - oldest overdue days
  action:
  - open customer-related invoice list

- widget_name: bank_match_pending_review
  display:
  - pending count
  - unmatched amount
  action:
  - open bank matching screen

- widget_name: recent_receipt_issuance
  display:
  - receipt number
  - issue date
  - linked invoice
  action:
  - open receipt detail

header_actions:
- search
- filter
- refresh
- notification access

visibility_rules:
- urgent widgets appear above informational widgets
- overdue and collection widgets must stay above fold on smartphone where possible
