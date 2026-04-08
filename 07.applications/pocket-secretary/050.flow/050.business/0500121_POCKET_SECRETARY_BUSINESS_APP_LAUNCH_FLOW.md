# ============================================================
# POCKET SECRETARY BUSINESS APP LAUNCH FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. user opens business-app entry from PocketSecretary
2. PocketSecretary determines entry mode
3. bounded launch context may be prepared
4. dedicated business app launch is requested
5. PocketSecretary reflects launch result

rules:
- launch and submission remain distinct
- launch and business acceptance remain distinct
