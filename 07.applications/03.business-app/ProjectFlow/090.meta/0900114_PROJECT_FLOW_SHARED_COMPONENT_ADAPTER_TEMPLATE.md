# ============================================================
# PROJECT FLOW SHARED COMPONENT ADAPTER TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for defining a ProjectFlow-side adapter
around an official shared component.

template_fields:
- concern_area
- official_component_name
- projectflow_adapter_name
- input_mapping
- output_mapping
- local_rules_applied
- unsupported_shared_fields optional
- projectflow_only_fields optional
- notes

rules:
- adapter exists on ProjectFlow side
- adapter does not rewrite official shared ownership
- adapter may hide or reshape ProjectFlow-local semantics for shared consumption
