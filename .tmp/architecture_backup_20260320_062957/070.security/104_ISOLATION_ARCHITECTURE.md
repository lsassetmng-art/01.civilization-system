# ============================================================
# ISOLATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:

Separation between domains and entities.

types:

- tenant isolation
- process isolation
- data isolation

rules:

Cross-domain access must be explicitly allowed.
