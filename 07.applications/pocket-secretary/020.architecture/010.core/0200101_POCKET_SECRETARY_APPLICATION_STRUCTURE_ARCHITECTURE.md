# ============================================================
# POCKET SECRETARY APPLICATION STRUCTURE ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

structure:
PocketSecretary shall be structured as a modular application.

major modules include:

- dashboard
- schedule
- todo
- memo
- archive
- checklist
- consult
- notification
- persona
- settings
- business request support
- local storage support
- sync support

rules:
- modules must have bounded responsibility
- cross-module dependency must be explicit
- modules must not become hidden authority layers
- user-facing modules and external integration modules
  must not be collapsed into one ambiguous unit
