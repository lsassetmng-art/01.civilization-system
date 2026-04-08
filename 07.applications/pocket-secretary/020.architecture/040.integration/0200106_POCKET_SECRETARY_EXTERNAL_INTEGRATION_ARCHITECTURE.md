# ============================================================
# POCKET SECRETARY EXTERNAL INTEGRATION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
External integrations must be bounded, explicit, and replaceable.

external targets may include:
- Persona-related services
- ERP-related gateways
- optional calendar or other external services

rules:
- integration boundaries must be explicit
- upstream source-of-truth ownership must be respected
- PocketSecretary must not impersonate authoritative upstream state
- external write paths must pass through explicit gate logic
- external dependencies must not break core local workflows
