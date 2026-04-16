# ============================================================
# POCKET SECRETARY PERMISSION MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents application-level permissions and execution eligibility
within PocketSecretary.

permission areas:
- device capability permission
- local feature permission
- bounded external action eligibility
- review-required action categories

rules:
- permission state must not be inferred from Persona style
- local permission must not impersonate upstream enterprise authority
- critical action eligibility must be explicitly modeled
