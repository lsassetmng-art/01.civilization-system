# FOUNDATION OVERVIEW ARCHITECTURE

status: canonical
layer: architecture
domain: foundation
owner: Boss
prepared_by: Zero

## PURPOSE
Define the architectural role of the foundation layer in Civilization OS.

## SCOPE
The foundation layer provides:
- global identifiers
- namespace rules
- cross-domain boundaries
- canonical shared primitives
- immutable structural contracts

## PRINCIPLES
- Foundation is lower than domain architecture
- Domain layers may depend on foundation
- Foundation must not depend on higher business rules
- Shared primitives must be explicit and minimal

## CORE ELEMENTS
- world_id
- system_config
- namespace
- domain_boundary
- canonical_id_rule

## OUTPUT
Foundation architecture acts as the base contract
for model, runtime, flow, interface, and policy.
