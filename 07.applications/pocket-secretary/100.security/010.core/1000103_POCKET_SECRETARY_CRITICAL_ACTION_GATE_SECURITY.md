# ============================================================
# POCKET SECRETARY CRITICAL ACTION GATE SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines gate security rules for critical actions.

critical actions include:
- ERP-facing submission
- external transmission of sensitive content
- identity-bearing request issuance
- actions with legal, financial, or organizational consequence

rules:
- critical actions require explicit user intent
- ambiguous state must block critical execution
- review and confirmation points must remain auditable
- local draft state and external execution state must remain distinct
