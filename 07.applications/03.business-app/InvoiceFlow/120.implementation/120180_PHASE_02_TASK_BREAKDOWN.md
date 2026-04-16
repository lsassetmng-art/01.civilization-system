# ============================================================
# PHASE 02 TASK BREAKDOWN
# Front Invoice Core
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-02

backend_tasks:
- implement create front invoice API
- implement get invoice list API
- implement get invoice detail API
- implement invoice PDF generation request handling
- implement send request registration handling
- update invoice status transitions from DRAFT to PDF_READY to SENT_REQUESTED

frontend_tasks:
- implement create front invoice screen
- implement invoice list filtering and sorting basics
- implement invoice detail summary and line item display
- implement document action buttons
- implement obvious FRONT_LOCAL / ERP_MASTER badges
- implement visible ERP non-eligible messaging for FRONT_LOCAL

data_tasks:
- create invoice_delivery_request table if not already created
- connect pdf_document_id persistence
- verify list query indexes for status and due date

test_tasks:
- test front invoice creation success path
- test invoice PDF generation success path
- test send request blocked when PDF missing
- test invoice list filtering by status and authority
- test invoice detail rendering of authority and ERP eligibility

review_tasks:
- review front invoice UX realism
- review PDF generation preconditions
- review send request wording and visibility

phase_completion_focus:
- operator can complete basic FRONT_LOCAL invoice operation
