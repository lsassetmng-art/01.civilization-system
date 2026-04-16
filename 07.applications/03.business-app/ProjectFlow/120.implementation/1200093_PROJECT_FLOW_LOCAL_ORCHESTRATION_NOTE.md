# ============================================================
# PROJECT FLOW LOCAL ORCHESTRATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-start guidance
for ProjectFlow local orchestration around shared components.

implementation_rules:
- define orchestration at screen or surface level
- keep adapter responsibility separate from orchestration responsibility
- adapters map data and contracts
- orchestration arranges sections,
  actions,
  and local visibility behavior
- final screen behavior remains ProjectFlow-owned
