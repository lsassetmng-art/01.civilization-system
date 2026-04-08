# ============================================================
# COMPANY CORE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: company
scope: company.core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines implementation rules for company.

## required_behavior
Implementation must realize
company identity handling,
ownership/role handling,
state handling,
activity handling,
boundary handling,
validation,
and failure behavior
without hidden shortcuts.

## implementation_components
- company state handler
- company identity resolver
- company role resolver
- company validation binder
- company execution dispatcher
- company failure presenter

## module_split
Logic must remain separable from
identity handling,
state handling,
validation logic,
and execution logic.

## execution_binding
Every actionable company path
must bind to a declared execution adapter.

## validation_binding
Validation must execute before mutation
and before privileged state transition.

## implementation_rules
- fail closed on ambiguity
- keep company identity scope explicit
- keep state handling explicit
- keep execution binding reviewable
- keep failure rendering bounded

## failure_codes
- COMPANY_IMPL_STATE_GAP
- COMPANY_IMPL_ROLE_GAP
- COMPANY_IMPL_VALIDATION_GAP
- COMPANY_IMPL_BINDING_GAP
- COMPANY_IMPL_FAILURE_PRESENTATION_GAP

## review_checklist
- components are explicit
- module split is explicit
- execution binding is explicit
- validation binding is explicit
