# ============================================================
# BANK IMPORT OPERATIONS STANDARD
# ============================================================

status: canonical
layer: operations
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines operational standards for bank transaction import handling.

standard_rules:
- imported bank transactions must remain visible until matched, rejected, or archived by policy
- ambiguous candidate matching must require human review
- duplicate external transaction keys must be blocked or flagged
- imported transactions must preserve original transaction date and raw reference
- operator override must be auditable
- bank import failure must not silently discard records

operator_actions:
- review candidate
- reject candidate
- confirm candidate
- mark as needs investigation
- reopen previously rejected candidate when policy allows

minimum_visibility:
- bank account
- transaction date
- transaction name
- transaction amount
- candidate invoice
- confidence score
- current match status
