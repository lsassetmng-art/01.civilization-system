# ============================================================
# POCKET SECRETARY EXTERNAL API INTEGRATION
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines general integration rules for external APIs
used by PocketSecretary.

API categories may include:
- Persona-related APIs
- ERP-related APIs
- calendar or schedule-related APIs
- optional bounded utility APIs

rules:
- every API must have a bounded role
- request intent and target must be identifiable
- response state must not be over-trusted without verification
- optional API failure must not collapse core local workflows
