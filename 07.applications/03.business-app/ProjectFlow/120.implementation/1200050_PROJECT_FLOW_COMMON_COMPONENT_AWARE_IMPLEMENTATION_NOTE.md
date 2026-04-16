# ============================================================
# PROJECT FLOW COMMON COMPONENT AWARE IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep implications of common-component-aware design.

implementation_rules:
- prefer shared shells for export, entitlement, sync visibility, and multilingual labeling when available
- keep ProjectFlow-specific calculation and composition logic local
- do not move local business semantics into shared layers without separate promotion
- keep adapter boundaries clear between shared shell and local data mapping
