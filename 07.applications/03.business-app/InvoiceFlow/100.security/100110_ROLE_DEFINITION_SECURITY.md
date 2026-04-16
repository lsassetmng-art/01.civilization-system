# ============================================================
# ROLE DEFINITION SECURITY
# ============================================================

status: canonical
layer: security
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the main operator roles for InvoiceFlow.

roles:

- role_code: IF_VIEWER
  role_name: Viewer
  purpose:
  - read-only visibility
  - monitor invoice/payment/collection status

- role_code: IF_OPERATOR
  role_name: Operator
  purpose:
  - daily invoice front operation
  - payment confirmation operation
  - collection action recording

- role_code: IF_COLLECTION_OPERATOR
  role_name: Collection Operator
  purpose:
  - overdue follow-up
  - dunning action management
  - priority collection handling

- role_code: IF_RECEIPT_OPERATOR
  role_name: Receipt Operator
  purpose:
  - receipt issuance
  - receipt reissue handling

- role_code: IF_MANAGER
  role_name: Manager
  purpose:
  - approval and override decisions
  - exception resolution
  - escalation control

- role_code: IF_FINANCE
  role_name: Finance
  purpose:
  - payment confirmation oversight
  - reflection oversight
  - receipt/accounting coordination

- role_code: IF_ADMIN
  role_name: Admin
  purpose:
  - tenant-level configuration
  - service connection visibility
  - permission management support

core_rules:
- all roles are company-scoped
- ERP reflection rights are narrower than normal edit rights
- receipt reissue rights are narrower than receipt view rights
- manual payment confirmation rights are narrower than invoice view rights
