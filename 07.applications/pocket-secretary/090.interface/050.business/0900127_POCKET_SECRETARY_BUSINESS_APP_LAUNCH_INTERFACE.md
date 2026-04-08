# ============================================================
# POCKET SECRETARY BUSINESS APP LAUNCH INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the interface for launching the dedicated business app
from PocketSecretary.

required UI elements:
- business app entry
- entry mode label where useful
- launch action
- visible distinction between launch and submission

rules:
- launch entry must be understandable
- launch and submission must not look equivalent
