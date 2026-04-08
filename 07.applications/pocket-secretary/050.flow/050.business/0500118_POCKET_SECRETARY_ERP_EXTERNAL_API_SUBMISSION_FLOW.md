# ============================================================
# POCKET SECRETARY ERP EXTERNAL API SUBMISSION FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. submission-eligible draft exists
2. PocketSecretary review surface is shown
3. user explicitly requests submission by application button
4. ERP API auth context is verified
5. shared external API call is made
6. submitted_pending_response state is recorded
7. accepted / failed / conflicted result is reflected

covered draft domains:
- ERP application draft
- quotation draft
- order draft

rules:
- PocketSecretary submits through external API only
- direct ERP database write does not occur
- API send and business acceptance remain distinct
