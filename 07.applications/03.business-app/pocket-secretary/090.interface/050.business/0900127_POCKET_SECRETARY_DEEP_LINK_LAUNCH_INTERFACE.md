# ============================================================
# POCKET SECRETARY DEEP LINK LAUNCH INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the interface for launching external business apps
through Deep Link from PocketSecretary.

supported targets:
- EstimateCreator
- NameCardManager

required UI elements:
- target app entry
- entry mode label where useful
- launch action
- install-guidance dialog when app is unavailable
- visible distinction between launch and submission

install-guidance dialog:
- title
- explanatory text
- install guidance action
- close action

rules:
- launch entry must be understandable
- launch and submission must not look equivalent
- unavailable app state must surface install guidance
