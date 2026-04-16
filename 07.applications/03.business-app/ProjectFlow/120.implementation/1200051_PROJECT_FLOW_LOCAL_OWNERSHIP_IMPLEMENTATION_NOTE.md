# ============================================================
# PROJECT FLOW LOCAL OWNERSHIP IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep implications of ProjectFlow local ownership.

implementation_rules:
- keep ProjectFlow-specific composition logic inside ProjectFlow modules
- keep ERP reference fields visually distinguishable from local editable fields
- keep BusinessOS-mediated behavior behind gateway boundaries
- keep shared component use behind adapters where needed
- keep WBS proposal, material composition, and local narrative logic app-local
