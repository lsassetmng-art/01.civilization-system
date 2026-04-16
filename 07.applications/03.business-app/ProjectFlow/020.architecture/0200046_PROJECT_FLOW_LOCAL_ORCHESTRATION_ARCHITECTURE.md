# ============================================================
# PROJECT FLOW LOCAL ORCHESTRATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines how ProjectFlow composes final screens
when using official shared common components.

architecture_rules:
- final screen responsibility remains ProjectFlow-local
- shared components may provide shells,
  primitives,
  or reusable panels
- ProjectFlow local orchestration decides:
  - screen order
  - grouping
  - visibility
  - local wording
  - local state binding
  - local action routing
- one screen may combine multiple shared components
  with ProjectFlow-local sections
- orchestration must not be mistaken for shared ownership

screen_orchestration_targets:
- dashboard
- project_detail
- export and report screens
- customer material screens
- sync visibility screens
