# ============================================================
# ESTIMATECREATOR REVISION APPROVAL CONVERSION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: EstimateCreator
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: revision-approval-conversion-architecture

purpose:
Defines the relationship between revision control, approval handling,
and order conversion readiness in EstimateCreator.

core_principle:
- commercial slippage often appears through uncontrolled revision,
  unresolved approval, or conversion blockers before it appears
  through final order failure.

architecture_rules:
- revisions must be queryable as commercial checkpoints
- approval requirement must be represented explicitly
- conversion blockers must survive beyond one screen or one session
- unresolved pricing exceptions must be visible in the same review flow
  as order conversion readiness

risk_categories:
- pricing exception risk
- approval pending risk
- revision drift risk
- conversion blocker risk
- expiry risk

visibility_outputs:
- estimate cockpit
- revision review screen
- approval review panel
- conversion readiness overview

cross-module relation:
- document editing feeds estimate draft content
- lifecycle layer summarizes commercial checkpoints
- approval layer captures governance state
- conversion layer surfaces order-ready or blocked status
