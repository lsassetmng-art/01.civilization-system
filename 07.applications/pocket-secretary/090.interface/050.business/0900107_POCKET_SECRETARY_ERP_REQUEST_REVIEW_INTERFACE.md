# ============================================================
# POCKET SECRETARY ERP REQUEST REVIEW INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the review and confirmation surface
for ERP-facing requests prepared in PocketSecretary.

required UI elements:
- request summary
- target identification
- key payload review surface
- review status
- confirmation action
- submission status display
- failure or conflict display

rules:
- review and confirmation must be explicit
- draft, submitted, and confirmed must remain visually distinct
- transport success must not be shown as final business success
