# ============================================================
# INVOICE FLOW POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

policy_core:
- invoice authority must be explicit
- payment confirmation source must be explicit
- receipt issuance must be traceable
- collection priority must be explainable
- reflection boundaries must be enforced
