# ============================================================
# PRODUCTPORTFOLIOMANAGER PHASE A SLICE FIELD FILL PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: ProductPortfolioManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-slice-field-fill-plan

purpose:
Defines what each Phase A slice should contain once empty stubs move
into field-filled implementation-ready stubs.

global_rules:
- exact field names follow the DTO freeze exactly
- controller remains thin
- service owns orchestration
- repository owns persistence and query only
- audit append remains separate
- no Japanese literals in Java source

slice_01_portfolio_cockpit_query:
  expected_fill:
    - request, response, validator, mapper, service, controller, repository, audit, config, tests

slice_02_scenario_exception_review_query:
  expected_fill:
    - request, response, validator, mapper, service, controller, repository, tests

slice_03_snapshot_and_audit_bridge:
  expected_fill:
    - snapshot model, snapshot repository, audit port, snapshot adapter, audit adapter

done_definition:
- all slice seams are fixed
- DTO and row-family alignment is explicit
- tests are named before runtime generation begins
