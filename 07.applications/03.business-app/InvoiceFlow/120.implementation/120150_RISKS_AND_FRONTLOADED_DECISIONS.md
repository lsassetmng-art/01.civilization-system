# ============================================================
# RISKS AND FRONTLOADED DECISIONS
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Captures implementation risks and items that should be decided early.

frontloaded_decisions:
- invoice PDF template policy
- receipt number generation policy
- bank account integration strategy
- ERP reflection boundary contract owner
- customer master source of truth
- send request delivery channel strategy
- language fallback policy
- currency display and rounding policy

major_risks:
- authority boundary becomes blurred between FRONT_LOCAL and ERP_MASTER
- manual payment confirmation is over-permissive
- receipt issuance occurs without solid payment linkage
- bank match false positives create operational confusion
- ERP reflection is attempted on non-eligible invoices
- collection management is under-modeled and becomes unusable in practice
- mobile layouts hide critical warnings or next actions

risk_reduction_rules:
- keep authority badge and ERP eligibility visible from early UI versions
- require audit trail on elevated actions from first implementation
- delay automation when certainty is weak
- prefer explicit status fields over inferred behavior
