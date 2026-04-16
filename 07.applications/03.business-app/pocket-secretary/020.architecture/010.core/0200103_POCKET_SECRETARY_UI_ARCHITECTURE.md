# ============================================================
# POCKET SECRETARY UI ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

ui_role:
The UI architecture provides the visible operating surface
of PocketSecretary.

primary UI areas:
- dashboard
- schedule view
- todo view
- memo / archive view
- settings
- persona presentation area
- request review / confirmation area

rules:
- UI must reflect actual system state
- UI must distinguish local, pending, confirmed, and failed states
- UI convenience must not hide execution boundaries
- UI must preserve human control over critical actions
