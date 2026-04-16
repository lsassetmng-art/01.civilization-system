# ============================================================
# PROJECT FLOW EDITABILITY IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep implications of editability boundaries.

implementation_rules:
- editable versus reference-only fields should be visually distinct
- derived read-only values should not expose misleading direct-edit affordances
- generated draft/proposal content should enter controlled editable state where allowed
- mediated status fields should be presented as status context,
  not editable form input
- localized display artifacts should stay outside business-edit forms where possible
