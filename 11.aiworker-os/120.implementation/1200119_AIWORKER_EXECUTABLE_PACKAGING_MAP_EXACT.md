# ============================================================
# AIWORKER EXECUTABLE PACKAGING MAP EXACT
# ============================================================

status: implementation-packaging-map
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Freeze how the design bundles map into executable implementation packages.

packaging_map:
- PKG-AIW-001
  source_bundle:
  - WB01
  executable_scope:
  - aiworker schema
  - core tables
  - code tables
  - indexes
  - constraints
  output_type:
  - SQL migration files

- PKG-AIW-002
  source_bundle:
  - WB03
  executable_scope:
  - controlled functions
  - intake status transition helpers
  - audit/outbox mutation helpers
  output_type:
  - SQL function files

- PKG-AIW-003
  source_bundle:
  - WB04
  executable_scope:
  - payload validators
  - schema-catalog binding
  - result summary mapping helpers
  output_type:
  - app-side and/or db-side validation package

- PKG-AIW-004
  source_bundle:
  - WB05
  executable_scope:
  - roles
  - grants
  - RLS policy files
  output_type:
  - SQL security package

- PKG-AIW-005
  source_bundle:
  - WB06
  executable_scope:
  - replay decision helpers
  - recovery support helpers
  - acceptance test definitions
  output_type:
  - SQL helpers and test catalog

packaging_rules:
- additive only
- package boundaries must preserve canonical design boundaries
- no package may widen raw-table access for AI worker runtime actors
- no package may collapse official intake and controlled function roles

hard_rules:
- package order follows dependency order
- packaging must remain phase-declared
