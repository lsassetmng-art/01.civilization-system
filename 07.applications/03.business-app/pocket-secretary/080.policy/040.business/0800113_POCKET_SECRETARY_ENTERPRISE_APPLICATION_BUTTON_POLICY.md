# ============================================================
# POCKET SECRETARY ENTERPRISE APPLICATION BUTTON POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
PocketSecretary applies the shared explicit-submission common
through Enterprise application-button behavior.

common reference:
BusinessOS submission common policy defines:
- explicit submission only
- no automatic first-time submission
- auth context required
- draft alignment required

covered draft domains:
- ERP application draft

rules:
- application button is the required explicit submission trigger
- draft completion alone must not submit
- application button behavior must remain visible and honest
