# ============================================================
# BANK MATCHING RUNTIME
# ============================================================

status: canonical
layer: runtime
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

rules:
- imported bank transaction may create match candidates
- ambiguous matches require review
- unmatched transactions remain visible for investigation
