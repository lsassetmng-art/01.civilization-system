# ============================================================
# PROJECT FLOW COMMON COMPONENT DECISION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-start guidance
for deciding shared versus app-local component use.

implementation_rules:
- each implementation-start package touching shared-shell-like areas
  should run a common-component decision first
- use official shared ownership where available
- keep app-local adapters explicit around shared components
- record decisions so the same concern is not re-decided inconsistently later
