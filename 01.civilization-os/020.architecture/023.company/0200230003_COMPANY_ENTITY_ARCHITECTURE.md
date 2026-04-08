# ============================================================
# COMPANY ENTITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: company
scope: company.entity
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines company entity structure.

## entity_definition
A company entity is a bounded economic and operational actor
recognized by the system as a durable subject.

It is durable because it survives
single events,
single workers,
single products,
and single market moments.

## entity_components
A canonical company entity carries:
- company identity
- naming and display identity
- ownership basis
- governing role topology
- activity boundary
- jurisdiction or policy context
- lifecycle state
- historical trace

## entity_rules
- entity identity must be stable
- display naming must not replace canonical identity
- ownership metadata must not be confused with operator metadata
- activity metadata must remain bounded
- lifecycle state must be queryable
- historical trace must survive dissolution

## lifecycle_boundary
The entity boundary separates:
- current operational self
- historical record
- projected/public display
- integration-facing representations

## failure_conditions
- entity has no canonical identity
- entity carries conflicting ownership bases
- entity exposes activity beyond allowed boundary
- entity historical state is overwritten by current projection

## review_checklist
- entity components are explicit
- entity boundary is explicit
- lifecycle meaning is explicit
- historical continuity is preserved
