# ============================================================
# PROJECT FLOW SCREEN ORCHESTRATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-start guidance
for screen-level local orchestration.

implementation_rules:
- screen orchestration should be documented before coding-oriented breakdown
- start with dashboard,
  project detail,
  customer material,
  sync status,
  and export/report surfaces
- reuse official shared components when available
- keep ProjectFlow-specific composition and action routing local
