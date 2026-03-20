# ============================================================
# IDENTITY & AUTHENTICATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:

Verification of entity identity.

methods:

- token
- signature
- session

rules:

No identity → no action
All identities must be verifiable
