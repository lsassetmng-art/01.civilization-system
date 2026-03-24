# ============================================================
# CIVILIZATION RESEARCH ETHICS INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for ethics review and experiment authorization.

required_fields:
- review_ref or authorization_code
- source_project_ref or project_scope
- ethics basis
- correlation_id

compatibility_rule:
Research-ethics interfaces must remain project-aware and ethics-aware.
