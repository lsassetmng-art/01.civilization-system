# ============================================================
# POCKET SECRETARY EXPLICIT SUBMISSION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific explicit submission runtime
based on the shared Business Submission Common.

common reference:
BusinessOS submission common runtime defines:
- draft exists
- explicit user submit action
- auth context verification
- external API submission
- result reflection

PocketSecretary-specific application:
- explicit submission starts from PocketSecretary review surfaces
- the trigger is the Enterprise application button

covered draft domains:
- ERP application draft
- quotation draft
- order draft

rules:
- explicit user action is required
- submission occurs through ERP external API only
- local draft, API send, and business acceptance remain distinct
