# ============================================================
# COMPANY BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: company
scope: company.boundary
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines authority and operational boundary for company.

## boundary_definition
Company boundary determines
what belongs to company truth,
what belongs to external projection,
what belongs to delegated execution,
and what belongs to external systems.

## boundary_axes
- ownership boundary
- operator boundary
- reviewer boundary
- policy boundary
- integration boundary
- historical boundary

## required_behavior
- authority basis must be explicit
- hidden boundary crossing is prohibited
- projected/public views must not overwrite truth
- delegated execution must remain attributable
- external integration must not seize origin authority
- historical state must not be merged into current state

## boundary_failures
- authority source is missing
- delegation scope is missing
- integration output overclaims authority
- public display overclaims truth
- historical and current state are mixed

## review_checklist
- all boundary axes are explicit
- failure modes are explicit
- truth and projection are separated
