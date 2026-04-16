# ============================================================
# APP DEVELOPMENT STUDIO INTEGRATION OVERVIEW
# ============================================================

status: canonical-draft
layer: integration
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines major integration targets and integration boundaries.

integration_goal:
To let App Development Studio work as an independent application
while connecting to target systems, repositories, workspaces, and execution routes.

primary_integration_targets:
- BusinessOS
- Civilization marketplace / distribution routes
- local Termux workspace
- Edge Function execution route
- Git repository and remote hosting
- package repository
- storage
- shared reusable component sources
- user-private reusable component sources

integration_principles:
- integration does not imply ownership absorption
- target-system truth remains outside unless explicitly imported
- external capabilities are treated as bounded dependencies
- integration should preserve policy and audit context
