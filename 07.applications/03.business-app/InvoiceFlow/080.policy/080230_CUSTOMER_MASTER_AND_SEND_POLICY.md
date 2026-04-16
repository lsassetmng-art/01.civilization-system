# ============================================================
# CUSTOMER MASTER AND SEND POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Fixes customer master and default send behavior.

customer_master_policy:
- when ERP contract exists, ERP is the customer master authority
- when ERP contract does not exist, BusinessOS/application-side customer operation is allowed
- source-of-truth meaning must remain explicit when mixed contexts exist

default_send_policy:
- default send channels at launch:
  - email
  - manual handoff
- share link is later optional expansion
- send-channel enablement may remain tenant-configurable later
