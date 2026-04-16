# ============================================================
# PROJECT FLOW FIELD OWNERSHIP IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep implications of field ownership.

implementation_rules:
- ERP-owned fields should be visually distinguishable when shown
- locally editable fields should be clearly separated from reference-only fields
- sync and boundary status fields should not be mistaken for business truth ownership
- localized display keys and localized labels should stay outside core business models where possible
