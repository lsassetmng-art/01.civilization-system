# ============================================================
# PROJECT FLOW COMMON COMPONENT DECISION TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for deciding whether a ProjectFlow implementation-start item
should use an official shared component
or remain app-local.

decision_template_fields:
- decision_target
- concern_area
- official_ledger_checked: yes_no
- official_component_found: yes_no
- official_component_name optional
- use_shared_component: yes_no
- keep_app_local: yes_no
- app_local_reason optional
- adapter_needed: yes_no
- notes

decision_rules:
- official ledger must be checked first
- if an official component exists and matches the concern,
  shared use is preferred
- if no official component exists,
  app-local handling may continue
- app-local handling does not imply future shared ownership automatically
