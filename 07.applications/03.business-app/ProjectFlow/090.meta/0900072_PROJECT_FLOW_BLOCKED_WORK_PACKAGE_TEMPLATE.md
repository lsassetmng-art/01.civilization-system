# ============================================================
# PROJECT FLOW BLOCKED WORK PACKAGE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for areas that must stay blocked
until explicit conflict resolution happens.

work_package_template_fields:
- package_id
- package_name
- scope_type: blocked
- blocked_reason
- conflicting_sources
- prerequisite_resolution
- allowed_interim_work
- forbidden_work
- reopen_condition
- notes

required_rules:
- blocked work must not silently move into active execution
- only conflict logging and summary cleanup may continue
- reopen condition must be explicit
