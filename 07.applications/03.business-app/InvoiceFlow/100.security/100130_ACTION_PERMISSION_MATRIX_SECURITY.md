# ============================================================
# ACTION PERMISSION MATRIX SECURITY
# ============================================================

status: canonical
layer: security
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines action-level permissions.

actions:

- action_code: CREATE_FRONT_INVOICE
  permissions:
    IF_VIEWER: deny
    IF_OPERATOR: allow
    IF_COLLECTION_OPERATOR: deny
    IF_RECEIPT_OPERATOR: deny
    IF_MANAGER: allow
    IF_FINANCE: allow_limited
    IF_ADMIN: deny

- action_code: EDIT_FRONT_INVOICE_BEFORE_SEND
  permissions:
    IF_VIEWER: deny
    IF_OPERATOR: allow
    IF_COLLECTION_OPERATOR: deny
    IF_RECEIPT_OPERATOR: deny
    IF_MANAGER: allow
    IF_FINANCE: allow_limited
    IF_ADMIN: deny

- action_code: GENERATE_INVOICE_PDF
  permissions:
    IF_VIEWER: deny
    IF_OPERATOR: allow
    IF_COLLECTION_OPERATOR: deny
    IF_RECEIPT_OPERATOR: deny
    IF_MANAGER: allow
    IF_FINANCE: allow
    IF_ADMIN: deny

- action_code: REQUEST_INVOICE_SEND
  permissions:
    IF_VIEWER: deny
    IF_OPERATOR: allow
    IF_COLLECTION_OPERATOR: deny
    IF_RECEIPT_OPERATOR: deny
    IF_MANAGER: allow
    IF_FINANCE: allow
    IF_ADMIN: deny

- action_code: CONFIRM_PAYMENT_BANK_MATCH
  permissions:
    IF_VIEWER: deny
    IF_OPERATOR: allow_limited
    IF_COLLECTION_OPERATOR: deny
    IF_RECEIPT_OPERATOR: deny
    IF_MANAGER: allow
    IF_FINANCE: allow
    IF_ADMIN: deny

- action_code: CONFIRM_PAYMENT_MANUAL
  permissions:
    IF_VIEWER: deny
    IF_OPERATOR: allow_limited
    IF_COLLECTION_OPERATOR: deny
    IF_RECEIPT_OPERATOR: deny
    IF_MANAGER: allow
    IF_FINANCE: allow
    IF_ADMIN: deny

- action_code: RECORD_COLLECTION_ACTION
  permissions:
    IF_VIEWER: deny
    IF_OPERATOR: allow_limited
    IF_COLLECTION_OPERATOR: allow
    IF_RECEIPT_OPERATOR: deny
    IF_MANAGER: allow
    IF_FINANCE: deny
    IF_ADMIN: deny

- action_code: SET_PRIORITY_COLLECTION_FLAG
  permissions:
    IF_VIEWER: deny
    IF_OPERATOR: deny
    IF_COLLECTION_OPERATOR: allow_limited
    IF_RECEIPT_OPERATOR: deny
    IF_MANAGER: allow
    IF_FINANCE: deny
    IF_ADMIN: deny

- action_code: ISSUE_RECEIPT
  permissions:
    IF_VIEWER: deny
    IF_OPERATOR: deny
    IF_COLLECTION_OPERATOR: deny
    IF_RECEIPT_OPERATOR: allow
    IF_MANAGER: allow
    IF_FINANCE: allow
    IF_ADMIN: deny

- action_code: REISSUE_RECEIPT
  permissions:
    IF_VIEWER: deny
    IF_OPERATOR: deny
    IF_COLLECTION_OPERATOR: deny
    IF_RECEIPT_OPERATOR: allow_limited
    IF_MANAGER: allow
    IF_FINANCE: allow
    IF_ADMIN: deny

- action_code: REQUEST_ERP_PAYMENT_REFLECTION
  permissions:
    IF_VIEWER: deny
    IF_OPERATOR: deny
    IF_COLLECTION_OPERATOR: deny
    IF_RECEIPT_OPERATOR: deny
    IF_MANAGER: allow
    IF_FINANCE: allow
    IF_ADMIN: deny

- action_code: RETRY_ERP_PAYMENT_REFLECTION
  permissions:
    IF_VIEWER: deny
    IF_OPERATOR: deny
    IF_COLLECTION_OPERATOR: deny
    IF_RECEIPT_OPERATOR: deny
    IF_MANAGER: allow
    IF_FINANCE: allow
    IF_ADMIN: deny

- action_code: OVERRIDE_DIFFERENCE_RESOLUTION
  permissions:
    IF_VIEWER: deny
    IF_OPERATOR: deny
    IF_COLLECTION_OPERATOR: deny
    IF_RECEIPT_OPERATOR: deny
    IF_MANAGER: allow
    IF_FINANCE: allow
    IF_ADMIN: deny

notes:
- allow_limited means scoped by policy and target state
- deny means no execution right even if screen is visible
