# ============================================================
# COLLECTION DASHBOARD INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines collection dashboard and collection detail interface requirements.

screen_ids:
- IF-SCR-080
- IF-SCR-090

collection_dashboard_widgets:

- widget_name: overdue_list
  fields:
  - invoice_number
  - customer_name
  - total_amount
  - outstanding_amount
  - overdue_days
  - next_action_date
  - priority_rank_code

- widget_name: collection_due_list
  fields:
  - invoice_number
  - customer_name
  - collection_due_date
  - next_action_date
  - action_owner

- widget_name: priority_queue
  fields:
  - invoice_number
  - customer_name
  - priority_rank_code
  - priority_reason_summary
  - overdue_days
  - outstanding_amount

- widget_name: dunning_history_panel
  fields:
  - latest_action_date
  - latest_action_type
  - latest_response_summary
  - promised_payment_date

- widget_name: customer_outstanding_summary
  fields:
  - customer_name
  - total_outstanding_amount
  - overdue_outstanding_amount
  - oldest_overdue_days
  - priority_rank_code

collection_detail_sections:

- section_name: collection_target_summary
  fields:
  - invoice_number
  - customer_name
  - outstanding_amount
  - overdue_days
  - collection_status_code
  - priority_rank_code

- section_name: action_history
  fields:
  - action_date
  - action_type_code
  - action_owner_user_id
  - action_note
  - response_summary

- section_name: next_action_plan
  fields:
  - next_action_date
  - collection_due_date
  - promised_payment_date
  - escalation_required_flag
  actions:
  - save_action
  - mark_promised
  - mark_escalated
  - mark_resolved

design_rules:
- priority reason must be understandable by operators
- overdue facts must be visible before history details
