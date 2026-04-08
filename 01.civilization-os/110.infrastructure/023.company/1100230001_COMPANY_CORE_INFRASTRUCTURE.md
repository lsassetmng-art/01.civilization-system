# ============================================================
# COMPANY CORE INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
domain: company
scope: company.core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines infrastructure support for company.

## infrastructure_scope
Infrastructure covers:
- company state substrate
- company identity substrate
- role-context substrate
- validation substrate
- execution substrate
- bounded failure support

## runtime_dependencies
Infrastructure must identify
which substrate resolves company identity,
which substrate resolves company state,
which substrate supports review and execution,
and which substrate supports bounded output.

## observability_components
Infrastructure must expose
company state signals,
identity signals,
validation signals,
execution signals,
and failure-surface signals.

## deployment_constraints
Infrastructure changes must not silently alter
company identity meaning,
ownership meaning,
state meaning,
or masking behavior.

## failure_modes
- state substrate unavailable
- identity substrate unavailable
- role context unavailable
- validation substrate unavailable
- execution substrate unavailable

## recovery_rules
Recovery may restore company behavior,
but recovery must not widen hidden privilege
or reinterpret company meaning.

## review_checklist
- infrastructure scope is explicit
- dependencies are explicit
- observability is explicit
- recovery rules are explicit
