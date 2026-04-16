# ============================================================
# INVOICE FLOW INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the main user-facing interface structure of InvoiceFlow.

# ============================================================
# 1. PRIMARY SCREENS
# ============================================================

primary_screens:
- login
- dashboard
- invoice list
- invoice detail
- create front invoice
- ERP-master invoice reference
- bank matching
- manual payment confirmation
- collection dashboard
- collection detail
- receipt detail
- settings

# ============================================================
# 2. DASHBOARD
# ============================================================

dashboard_widgets:
- invoice due today
- payment waiting count
- overdue count
- priority collection queue
- customer outstanding top list
- recent receipt issuance
- bank matching pending review count

# ============================================================
# 3. INVOICE DETAIL
# ============================================================

invoice_detail_sections:
- invoice summary
- line items
- invoice authority badge
- invoice PDF action
- send request/history
- payment status
- collection status
- receipt history
- ERP reflection status

invoice_authority_badges:
- FRONT_LOCAL
- ERP_MASTER

# ============================================================
# 4. PAYMENT CONFIRMATION
# ============================================================

payment_confirmation_sections:
- confirmation source selector
- bank match candidate area
- manual confirmation form
- reconciliation summary
- receipt issuance action
- audit hint/status

confirmation_sources:
- BANK_LINKED
- MANUAL

# ============================================================
# 5. COLLECTION
# ============================================================

collection_dashboard_sections:
- overdue list
- collection due list
- priority queue
- dunning history panel
- customer outstanding summary
- escalation candidate panel

collection_detail_sections:
- invoice summary
- overdue facts
- collection history
- promise-to-pay record
- next action setting
- priority reason display

# ============================================================
# 6. RECEIPT
# ============================================================

receipt_sections:
- receipt summary
- linked payment confirmation
- linked invoice
- issue/reissue history
- PDF action

# ============================================================
# 7. GLOBAL INTERFACE REQUIREMENTS
# ============================================================

interface_root_requirements:
- multilingual UI expansion must be supported
- multicurrency display must be supported
- iphone layout must be supported
- android layout must be supported
- pc layout must be supported
- tablet layout must be supported
- screen design must be adaptive or responsive across device classes
- invoice authority distinction must be visibly clear
- ERP non-eligible front invoice must be visibly clear
