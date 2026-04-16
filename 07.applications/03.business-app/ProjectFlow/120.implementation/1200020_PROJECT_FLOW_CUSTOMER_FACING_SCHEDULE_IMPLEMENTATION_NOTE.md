# ============================================================
# PROJECT FLOW CUSTOMER FACING SCHEDULE IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

implementation_targets:
- WBS to customer-facing grouping transformation
- milestone-first schedule rendering
- wording override support
- export support for customer-facing schedule
- review-aware external-use handling

implementation_rules:
- customer-facing schedule must not become a second source of truth
- generation should reuse existing WBS and milestone data where possible
- editable wording and visible item selection should be supported
