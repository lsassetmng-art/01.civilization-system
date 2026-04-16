# ============================================================
# POCKET SECRETARY SENSITIVE STATE HANDLING SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines handling rules for sensitive state inside PocketSecretary.

sensitive state areas:
- private note content
- schedule details
- ERP draft content
- personal preferences
- status indicators that imply external interaction context

rules:
- sensitive state visibility must be minimized by default
- user-facing disclosure must be bounded by purpose
- sensitive state must not be exposed through convenience-first shortcuts
