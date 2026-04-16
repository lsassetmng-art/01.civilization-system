# ============================================================
# POCKET SECRETARY ORDER DRAFT ARCHITECTURE
# ============================================================

status: replaced-by-external-app
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

replacement:
Order draft creation is no longer owned by PocketSecretary.

new_position:
PocketSecretary launches the dedicated business app
for quotation and order work.

PocketSecretary role:
- launch business app
- optionally pass bounded context
- remain secretary-facing host app

non-role:
- PocketSecretary does not own order draft creation UI
- PocketSecretary does not own sales-order formal draft workflow
