# ============================================================
# COMPANY CORE DEVELOPMENT
# ============================================================

status: canonical
layer: development
domain: company
scope: company.core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines development rules for company.

## scope
Development covers
design intent,
implementation intent,
test intent,
review intent,
and migration-safe change handling
for company semantics.

## state_test_scenarios
- register company
- activate company
- restrict company
- suspend company
- dissolve company with preserved history

## route_test_scenarios
- valid company action path
- invalid authority path
- invalid state path
- boundary conflict path

## validation_rules
- identity validation test exists
- ownership validation test exists
- role validation test exists
- activity validation test exists
- state validation test exists

## failure_code_checklist
- state error
- identity error
- role error
- boundary error
- safe fallback error

## review_checklist
- lifecycle scenarios are explicit
- actor matrix is explicit
- validation checklist is explicit
- failure checklist is explicit
- migration checklist is explicit

## migration_rules
Migration must preserve
company identity meaning,
state meaning,
authority meaning,
and historical continuity.

## done_definition
This document is complete when
the team can build,
test,
review,
and evolve company behavior
without inventing missing semantics.
