# CORE ENTITY LIFECYCLE ARCHITECTURE

status: canonical
layer: architecture
domain: foundation

## PURPOSE
Define lifecycle stages for canonical entities.

## LIFECYCLE
draft
registered
active
suspended
archived
deleted_logical

## RULES
- Physical deletion is prohibited for canonical entities
- Lifecycle transitions must be event-driven
- State transitions must be auditable
