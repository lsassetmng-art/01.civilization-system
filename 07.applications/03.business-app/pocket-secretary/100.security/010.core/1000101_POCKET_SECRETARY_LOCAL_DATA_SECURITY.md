# ============================================================
# POCKET SECRETARY LOCAL DATA SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines protection rules for local application data.

protected data includes:
- schedule data
- todo data
- notes
- archive references
- local configuration
- notification settings
- request drafts
- local Persona-linked presentation state where applicable

rules:
- local data exposure must be minimized
- sensitive content must not be broadly surfaced without purpose
- deletion, archive, and retention states must remain distinguishable
- local data handling must remain consistent with privacy-by-default
