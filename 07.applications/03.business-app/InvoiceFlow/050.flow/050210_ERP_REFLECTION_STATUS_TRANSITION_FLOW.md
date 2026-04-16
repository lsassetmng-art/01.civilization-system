# ============================================================
# ERP REFLECTION STATUS TRANSITION FLOW
# ============================================================

status: canonical
layer: flow
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines ERP reflection request/result transitions.

erp_reflection_status_codes:
- ERP_NOT_APPLICABLE
- ERP_MASTER_REFERENCE
- ERP_PAYMENT_SYNC_READY
- ERP_PAYMENT_SYNCED
- ERP_SYNC_FAILED

transitions:

- from: ERP_NOT_APPLICABLE
  to:
  - none

- from: ERP_MASTER_REFERENCE
  to:
  - ERP_PAYMENT_SYNC_READY
  - ERP_SYNC_FAILED
  conditions:
  - eligible payment-result reflection is prepared or blocked

- from: ERP_PAYMENT_SYNC_READY
  to:
  - ERP_PAYMENT_SYNCED
  - ERP_SYNC_FAILED
  conditions:
  - shared ERP reflection returns success or failure

- from: ERP_SYNC_FAILED
  to:
  - ERP_PAYMENT_SYNC_READY
  conditions:
  - retry path is allowed and prepared

- from: ERP_PAYMENT_SYNCED
  to:
  - none

rules:
- FRONT_LOCAL invoice must remain ERP_NOT_APPLICABLE for invoice-master reflection
- reflection must pass shared BusinessOS boundary
- ERP synced is terminal for the specific request result
