# ============================================================
# POCKET SECRETARY CONFIGURATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents local application configuration.

configuration areas:
- display settings
- notification settings
- dashboard preferences
- default secretary presentation
- offline behavior preferences
- sync preferences
- privacy-related local options

rules:
- configuration must remain scoped to the application
- local convenience settings must not override security boundaries
