# ============================================================
# INVOICE FLOW IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

implementation_priorities:
- invoice authority separation first
- payment confirmation routes second
- collection queue and dashboard third
- receipt issuance fourth
- ERP reflection boundary fifth
