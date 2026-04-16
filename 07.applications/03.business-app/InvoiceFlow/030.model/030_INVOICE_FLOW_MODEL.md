# ============================================================
# INVOICE FLOW MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the main domain model for InvoiceFlow.

# ============================================================
# 1. PRIMARY OBJECTS
# ============================================================

primary_objects:
- invoice_case
- invoice_line
- invoice_delivery_request
- payment_schedule
- payment_confirmation
- bank_transaction_import
- simple_reconciliation
- receipt_issue
- collection_action
- customer_outstanding_summary
- erp_reflection_request
- erp_reflection_result
- audit_log

# ============================================================
# 2. MODEL OVERVIEW
# ============================================================

invoice_case:
  role:
    Main invoice unit handled by the application.
  important_axes:
    - invoice_origin_type
    - invoice_authority_type
    - erp_link_eligibility
    - language_code
    - currency_code
    - invoice_status_code
    - collection_status_code

invoice_line:
  role:
    Line-level charge details under invoice_case.

invoice_delivery_request:
  role:
    Tracks delivery/send request of invoice PDF or invoice notice.

payment_schedule:
  role:
    Represents expected payment timing and amount.

payment_confirmation:
  role:
    Represents actual payment confirmation fact.
  important_axes:
    - confirmation_source_type
    - confirmation_status_code
    - confirmed_amount
    - evidence linkage

bank_transaction_import:
  role:
    Imported bank-side transaction fact used for candidate matching.

simple_reconciliation:
  role:
    Lightweight front-side invoice/payment alignment.
  limitation:
    Not the formal ERP settlement master.

receipt_issue:
  role:
    Tracks issuance of receipt after confirmed payment.

collection_action:
  role:
    Tracks dunning/follow-up/collection history and next action planning.

customer_outstanding_summary:
  role:
    Customer-level unpaid summary for collection priority visibility.

erp_reflection_request:
  role:
    Request sent across shared ERP reflection boundary.

erp_reflection_result:
  role:
    Reflection result returned from shared ERP reflection boundary.

audit_log:
  role:
    Critical action trace record.

# ============================================================
# 3. KEY DOMAIN RULES
# ============================================================

domain_rules:
- invoice_case must carry invoice authority meaning.
- currency_code is mandatory for monetary handling.
- language_code is mandatory for localized document handling.
- payment_confirmation must declare source type.
- receipt_issue must link to confirmed payment.
- collection_action is first-class and not optional by design.
- simple_reconciliation does not replace ERP-side formal truth.
- ERP reflection request must obey eligibility rules.

# ============================================================
# 4. STATUS CONCEPTS
# ============================================================

invoice_status_codes:
- DRAFT
- PDF_READY
- SENT_REQUESTED
- SENT
- PAYMENT_WAITING
- PARTIALLY_PAID
- PAID
- OVERDUE
- CLOSED
- CANCELLED

payment_confirmation_status_codes:
- UNCONFIRMED
- BANK_MATCH_CANDIDATE
- BANK_MATCH_CONFIRMED
- MANUAL_CONFIRMED
- PARTIAL_CONFIRMED
- DIFFERENCE_FOUND
- RECEIPT_ISSUED
- CLOSED

collection_status_codes:
- NONE
- MONITORING
- FOLLOW_UP_REQUIRED
- COLLECTION_SCHEDULED
- CONTACTED
- PROMISED
- ESCALATED
- RESOLVED

erp_reflection_status_codes:
- ERP_NOT_APPLICABLE
- ERP_MASTER_REFERENCE
- ERP_PAYMENT_SYNC_READY
- ERP_PAYMENT_SYNCED
- ERP_SYNC_FAILED

# ============================================================
# 5. MULTILINGUAL / MULTICURRENCY MODEL RULES
# ============================================================

global_model_rules:
- no invoice record may omit currency identity
- no document output may assume single language
- exchange_rate_snapshot may exist where cross-currency display is needed
- displayed symbols must not replace explicit currency code handling
