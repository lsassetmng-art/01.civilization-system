# ============================================================
# PROJECT FLOW COMMON COMPONENT REUSE TEST NOTE
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines reuse-oriented test viewpoints.

reuse_test_points:
- summary card component can accept different metrics
- overdue/delay component can bind to different entities
- sync status component can show generic shared integration states
- export panel can support different target scopes
- read-only banner and guards work across multiple feature screens
- report draft editor can accept different template types without project-specific coupling
