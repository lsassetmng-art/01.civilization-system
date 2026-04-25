# APP_COMMON METADATA MODEL CANONICAL

status: canonical
layer: model

## Identity model
Every metadata record must support stable identity and change-safe versioning.

## Required characteristics
- stable code-based identity
- version awareness
- locale awareness where relevant
- variant awareness where relevant
- safe deactivation support
- audit-friendly timestamps

## Modeling rule
Metadata defines presentation possibilities, not authoritative business decisions.
