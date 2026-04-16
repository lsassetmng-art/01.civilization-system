# ============================================================
# POCKET SECRETARY AUTO SUBMISSION PROHIBITION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific no-auto-submit behavior
based on the shared Business Submission Common.

common reference:
BusinessOS submission common defines auto-submission prohibition.

covered draft domains:
- ERP application draft
- quotation draft
- order draft

rules:
- auto-submit is prohibited
- background behavior may preserve state,
  but must not create first-time submission without explicit user action
