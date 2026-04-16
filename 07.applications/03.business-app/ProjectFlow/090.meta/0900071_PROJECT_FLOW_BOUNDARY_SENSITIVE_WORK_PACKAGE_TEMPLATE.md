# ============================================================
# PROJECT FLOW BOUNDARY-SENSITIVE WORK PACKAGE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for work packages that touch BusinessOS,
ERP,
or external canonical ownership.

work_package_template_fields:
- package_id
- package_name
- scope_type: boundary_sensitive
- concern_area
- objective
- prerequisite_documents
- conflict_check_required: yes
- blocked_if_conflict_exists: yes
- expected_outputs
- escalation_target
- notes

required_rules:
- do not start boundary-sensitive work without conflict check
- do not guess ownership when external canon is unclear
- record which higher reference was used
