# ============================================================
# MULTI DEVICE LAYOUT REQUIREMENTS
# ============================================================

status: canonical
layer: infrastructure
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines layout requirements across device classes.

device_classes:
- iphone
- android_phone
- tablet
- pc

layout_rules:
- dashboard top priority widgets must remain visible on phone
- invoice authority and ERP eligibility badges must remain above fold on detail screens where possible
- collection next-action controls must not be hidden behind desktop-only patterns
- wide-table data should have mobile fallback presentation
- destructive or elevated actions should remain separated from routine actions
