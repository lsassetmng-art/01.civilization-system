# ============================================================
# PROJECT FLOW INTERFACE OVERVIEW
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines screen-level interface design for ProjectFlow.

ui_principles:
- fast daily operation
- clear delay visibility
- issue and risk visibility at a glance
- easy switch between project and task views
- sync/error visibility without deep navigation
- export and report actions must be easy to find
- customer-facing outputs must be review-aware

global_ui_rules:
- list screens should support search, filter, sort
- primary actions must remain visible
- destructive actions must require explicit confirmation
- ERP-owned read-only fields must be visually distinguishable
- draft report state must be visually distinguishable
