# ============================================================
# AUTHORIZATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:

Determines what an entity is allowed to do.

inputs:

- role
- authority_level
- policy

rules:

Authorization must be explicit
Implicit permissions are forbidden
