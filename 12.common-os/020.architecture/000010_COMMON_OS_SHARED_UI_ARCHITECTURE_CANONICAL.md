# COMMON OS SHARED UI ARCHITECTURE CANONICAL

status: canonical
layer: architecture

## Canonical UI layer stack
1. Token layer
2. Primitive layout layer
3. Base control layer
4. Composite interaction pattern layer
5. App shell and navigation layer
6. Sync and queue presentation layer
7. Domain wrapper layer

## Rules
- Shared UI canon is HTML-based.
- PC, smartphone, and tablet do not split the UI canon.
- Density, layout, and capability differences are absorbed through variants and responsive behavior.
- Domain wrappers may compose shared parts but must not fork core component behavior without review.
