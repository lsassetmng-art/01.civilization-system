# ============================================================
# POCKET SECRETARY ERP AUTH CONTEXT INTEGRATION
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines PocketSecretary-specific integration usage
of the shared auth-context common.

common reference:
BusinessOS submission common defines shared auth-context requirements.

PocketSecretary-specific application:
- PocketSecretary uses valid ERP external API authentication context
  from explicit Enterprise submission flows
- auth context is validated before submission from app review surfaces

rules:
- auth context must remain valid at submission time
- missing, invalid, or expired auth context blocks submission
- auth context validation does not equal business acceptance
