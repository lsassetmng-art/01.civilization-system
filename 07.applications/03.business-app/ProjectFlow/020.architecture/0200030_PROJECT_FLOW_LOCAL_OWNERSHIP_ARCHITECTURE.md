# ============================================================
# PROJECT FLOW LOCAL OWNERSHIP ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines what ProjectFlow locally owns
after separating higher-level canonical references,
BusinessOS mediation,
ERP-owned truth,
and shared common components.

projectflow_local_ownership_domains:
- project execution front UX
- task execution UX
- milestone execution UX
- issue and risk operational UX
- local time entry UX
- customer-facing material composition
- progress report draft composition
- template usage and WBS proposal behavior
- local memo and comment context
- local screen state and wireframe composition
- local multilingual label application in ProjectFlow context

local_ownership_rules:
- ProjectFlow owns app-local composition and behavior
- ProjectFlow may consume external truth but does not re-own it
- ProjectFlow may consume common shells but keeps app semantics local
- ProjectFlow local ownership should remain additive and app-scoped
