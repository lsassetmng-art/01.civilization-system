# ============================================================
# POCKET SECRETARY BUSINESS APP LAUNCH ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines how PocketSecretary launches the dedicated business app
for quotation and order work.

business app role:
The dedicated business app owns:
- quotation draft creation
- order draft creation
- business document editing workflow
- business review flow specific to that app

PocketSecretary role:
- present launch entry
- launch business app explicitly
- optionally pass bounded launch context
- remain separate from document-authoring ownership

bounded launch context may include:
- customer reference
- company context
- entry point mode
- handoff source

rules:
- PocketSecretary is not the authoring owner of quotation/order documents
- app launch must not be misrepresented as submission success
