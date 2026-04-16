# ============================================================
# PROJECT FLOW MINIMUM SUPPORT SCOPE POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines minimum support scope.

minimum_support_scope_examples:
- basic usage clarification
- basic entitlement and read-only clarification
- basic export and report usage clarification
- basic sync-status reading clarification
- basic troubleshooting direction for obvious user-facing problems

outside_or_not_assumed_in_base_scope:
- customer-specific operational redesign
- customer-specific template construction service
- customer-specific report-writing service
- manual data cleanup service
- business consulting level support
- guaranteed real-time support

product_design_implication:
Because support is minimal,
the product should prioritize:
- understandable screens
- clear wording
- predictable action placement
- visible blocked-action reasons
- explanation-friendly outputs
