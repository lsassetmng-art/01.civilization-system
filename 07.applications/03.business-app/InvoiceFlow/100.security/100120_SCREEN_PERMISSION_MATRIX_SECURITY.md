# ============================================================
# SCREEN PERMISSION MATRIX SECURITY
# ============================================================

status: canonical
layer: security
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines screen-level access permissions.

matrix:

- screen_id: IF-SCR-010
  screen_name: Dashboard
  access:
    IF_VIEWER: view
    IF_OPERATOR: view
    IF_COLLECTION_OPERATOR: view
    IF_RECEIPT_OPERATOR: view
    IF_MANAGER: view
    IF_FINANCE: view
    IF_ADMIN: view

- screen_id: IF-SCR-020
  screen_name: Invoice List
  access:
    IF_VIEWER: view
    IF_OPERATOR: view
    IF_COLLECTION_OPERATOR: view
    IF_RECEIPT_OPERATOR: view
    IF_MANAGER: view
    IF_FINANCE: view
    IF_ADMIN: view

- screen_id: IF-SCR-030
  screen_name: Invoice Detail
  access:
    IF_VIEWER: view
    IF_OPERATOR: edit_limited
    IF_COLLECTION_OPERATOR: view
    IF_RECEIPT_OPERATOR: view
    IF_MANAGER: edit
    IF_FINANCE: edit_limited
    IF_ADMIN: view

- screen_id: IF-SCR-040
  screen_name: Create Front Invoice
  access:
    IF_VIEWER: none
    IF_OPERATOR: create
    IF_COLLECTION_OPERATOR: none
    IF_RECEIPT_OPERATOR: none
    IF_MANAGER: create
    IF_FINANCE: create_limited
    IF_ADMIN: none

- screen_id: IF-SCR-050
  screen_name: ERP Master Invoice Reference
  access:
    IF_VIEWER: view
    IF_OPERATOR: view
    IF_COLLECTION_OPERATOR: view
    IF_RECEIPT_OPERATOR: view
    IF_MANAGER: view
    IF_FINANCE: view
    IF_ADMIN: view

- screen_id: IF-SCR-060
  screen_name: Bank Matching
  access:
    IF_VIEWER: none
    IF_OPERATOR: edit_limited
    IF_COLLECTION_OPERATOR: none
    IF_RECEIPT_OPERATOR: none
    IF_MANAGER: edit
    IF_FINANCE: edit
    IF_ADMIN: view

- screen_id: IF-SCR-070
  screen_name: Manual Payment Confirmation
  access:
    IF_VIEWER: none
    IF_OPERATOR: create_limited
    IF_COLLECTION_OPERATOR: none
    IF_RECEIPT_OPERATOR: none
    IF_MANAGER: create
    IF_FINANCE: create
    IF_ADMIN: none

- screen_id: IF-SCR-080
  screen_name: Collection Dashboard
  access:
    IF_VIEWER: view
    IF_OPERATOR: view
    IF_COLLECTION_OPERATOR: edit_limited
    IF_RECEIPT_OPERATOR: none
    IF_MANAGER: edit
    IF_FINANCE: view
    IF_ADMIN: view

- screen_id: IF-SCR-090
  screen_name: Collection Detail
  access:
    IF_VIEWER: view
    IF_OPERATOR: edit_limited
    IF_COLLECTION_OPERATOR: edit
    IF_RECEIPT_OPERATOR: none
    IF_MANAGER: edit
    IF_FINANCE: view
    IF_ADMIN: view

- screen_id: IF-SCR-100
  screen_name: Receipt Detail
  access:
    IF_VIEWER: view
    IF_OPERATOR: view
    IF_COLLECTION_OPERATOR: none
    IF_RECEIPT_OPERATOR: edit
    IF_MANAGER: edit
    IF_FINANCE: edit
    IF_ADMIN: view

- screen_id: IF-SCR-110
  screen_name: Settings
  access:
    IF_VIEWER: none
    IF_OPERATOR: none
    IF_COLLECTION_OPERATOR: none
    IF_RECEIPT_OPERATOR: none
    IF_MANAGER: view_limited
    IF_FINANCE: view_limited
    IF_ADMIN: edit

notes:
- edit_limited means action-limited editing within role scope
- create_limited means creation without broad override authority
