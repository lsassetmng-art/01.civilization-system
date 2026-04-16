# ============================================================
# APP DEVELOPMENT STUDIO INFRASTRUCTURE OVERVIEW
# ============================================================

status: canonical-draft
layer: infrastructure
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines infrastructure surfaces the application may depend on.

infrastructure_goal:
To support multiple execution environments without forcing one fixed runtime model.

main_infrastructure_surfaces:
- local Termux environment
- Edge Function route
- Android companion
- Git hosting
- storage
