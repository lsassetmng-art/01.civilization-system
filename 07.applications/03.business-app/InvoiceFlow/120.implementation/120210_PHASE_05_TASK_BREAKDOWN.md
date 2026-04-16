# ============================================================
# PHASE 05 TASK BREAKDOWN
# Collection Management
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-05

backend_tasks:
- implement overdue detection logic
- implement collection action record API
- implement customer outstanding summary read path
- implement priority flag update path
- update collection status transitions

frontend_tasks:
- implement collection dashboard
- implement collection detail screen
- display overdue list and priority queue
- display next action and promised payment date
- support collection action entry

data_tasks:
- create collection_action table
- create customer_outstanding_summary table or summary view
- create required indexes for next_action_date and customer summary

test_tasks:
- test overdue transition visibility
- test collection action recording
- test promise-to-pay update
- test priority queue visibility
- test collection status transitions

review_tasks:
- review operational realism of collection workflow
- review priority reason visibility
- review dashboard usefulness on smartphone and tablet

phase_completion_focus:
- overdue and follow-up work are operationally manageable
