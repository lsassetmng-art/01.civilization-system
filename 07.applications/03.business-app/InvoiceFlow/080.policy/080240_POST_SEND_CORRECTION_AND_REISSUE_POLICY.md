# ============================================================
# POST SEND CORRECTION AND REISSUE POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Fixes post-send correction and reissue handling.

post_send_correction_policy:
- after send, core invoice facts are treated as locked
- locked facts include:
  - monetary values
  - line details
  - customer identity
  - due date
  - currency
  - language
- correction of locked facts requires cancel and recreate path
- limited non-core memo-like correction may be allowed under policy

receipt_reissue_policy:
- reissue creates a new receipt number
- original receipt remains historically visible
- prior linkage is mandatory
- reissue should remain visibly distinguishable
