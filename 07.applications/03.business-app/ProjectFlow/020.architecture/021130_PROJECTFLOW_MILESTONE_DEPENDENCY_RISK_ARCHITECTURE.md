# ============================================================
# PROJECTFLOW MILESTONE DEPENDENCY RISK ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: ProjectFlow
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: milestone-dependency-risk-architecture

purpose:
Defines the relationship between milestone tracking, dependency
exposure, and risk review in ProjectFlow.

core_principle:
- delivery slippage is usually visible first through milestones,
  dependency breakage, or unresolved decisions, not only through task lists.

architecture_rules:
- milestones must be queryable as delivery checkpoints
- dependency links must be represented explicitly
- risk review items must survive beyond one meeting or one screen
- unresolved blockers must be visible in the same review flow as milestone health

risk_categories:
- schedule risk
- dependency risk
- staffing or owner risk
- decision pending risk
- scope drift risk

visibility_outputs:
- project cockpit
- risk review screen
- dependency review panel
- milestone health overview

cross-module relation:
- task module feeds detailed execution state
- milestone layer summarizes delivery checkpoints
- dependency layer captures cross-item blockage
- risk layer surfaces management attention points
