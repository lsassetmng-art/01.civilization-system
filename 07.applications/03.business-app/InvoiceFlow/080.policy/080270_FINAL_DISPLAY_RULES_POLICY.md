# ============================================================
# FINAL DISPLAY RULES POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Fixes final display-level rules for the application.

display_rules:
- authority badge must be shown on invoice list and invoice detail
- ERP eligibility warning must be shown on FRONT_LOCAL invoice detail
- outstanding amount must be shown with currency code
- overdue days must be shown in collection contexts
- receipt detail must show linked invoice and linked payment together
- reissued receipt must show prior receipt linkage
- unresolved bank candidate must show ambiguity state clearly
- destructive/elevated actions must remain visually separated

phone_layout_rules:
- top warning area must remain above fold where possible
- authority badge must remain near invoice summary
- next_action_date must remain visible in collection detail
