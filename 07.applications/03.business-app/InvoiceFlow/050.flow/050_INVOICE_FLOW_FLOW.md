# ============================================================
# INVOICE FLOW FLOW
# ============================================================

status: canonical
layer: flow
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the main business flows of InvoiceFlow.

# ============================================================
# 1. FRONT INVOICE FLOW
# ============================================================

front_invoice_flow:
1. create front invoice draft
2. enter invoice lines and invoice facts
3. validate due date, amount, currency, and language
4. generate invoice PDF
5. request/send delivery
6. move to payment waiting
7. perform payment confirmation when paid
8. enter collection flow if overdue
9. close when settled

# ============================================================
# 2. ERP MASTER INVOICE FLOW
# ============================================================

erp_master_invoice_flow:
1. receive/reference ERP-master invoice fact
2. display invoice status in InvoiceFlow
3. monitor payment waiting and due timing
4. confirm payment by bank-linked or manual route
5. perform simple reconciliation
6. submit allowed payment-result reflection
7. update visibility and audit

# ============================================================
# 3. BANK PAYMENT CONFIRMATION FLOW
# ============================================================

bank_payment_confirmation_flow:
1. import bank transactions
2. create invoice match candidates
3. review candidate confidence
4. confirm payment against target invoice
5. compute difference or partial state if needed
6. allow receipt issuance
7. update collection/overdue state if resolved

# ============================================================
# 4. MANUAL PAYMENT CONFIRMATION FLOW
# ============================================================

manual_payment_confirmation_flow:
1. choose manual confirmation
2. enter payment date, amount, and note
3. attach evidence if available
4. confirm payment
5. compute difference or partial state if needed
6. allow receipt issuance
7. update collection/overdue state if resolved

# ============================================================
# 5. COLLECTION FLOW
# ============================================================

collection_follow_up_flow:
1. detect overdue status
2. compute/update collection priority
3. set collection due date
4. record dunning history
5. record promise-to-pay or escalation
6. continue until payment confirmed
7. resolve collection state

# ============================================================
# 6. RECEIPT FLOW
# ============================================================

receipt_issuance_flow:
1. locate confirmed payment
2. verify receipt policy
3. generate receipt record
4. generate receipt PDF
5. store audit record
6. expose receipt history

# ============================================================
# 7. FLOW RULES
# ============================================================

flow_rules:
- FRONT_LOCAL invoice never becomes ERP invoice master
- ERP reflection is allowed only on eligible paths
- receipt issuance requires confirmed payment
- collection is triggered by overdue/unpaid conditions
- ambiguous bank match must stop for review
