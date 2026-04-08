# ============================================================
# APP DEVELOPMENT STUDIO AUTHORITY MATRIX ARCHITECTURE
# ============================================================

status: canonical-draft
layer: architecture
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines role/action authority matrix architecture.

authority_dimensions:
- actor role
- action type
- target scope
- environment
- review requirement
- approval requirement
- escalation condition

recommended_roles:
- owner
- admin
- project_manager
- developer
- reviewer
- tester
- viewer

high_impact_actions:
- rule activation
- shared component overwrite
- SQL execution
- destructive SQL
- apply execution
- protected branch push
- version close / release mark
