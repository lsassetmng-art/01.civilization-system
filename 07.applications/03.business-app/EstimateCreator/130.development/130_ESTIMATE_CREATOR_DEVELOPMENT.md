# ============================================================
# ESTIMATE CREATOR DEVELOPMENT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. DEVELOPMENT ROLE
# ============================================================

EstimateCreator Development controls
the order and discipline of development.

It exists to reduce architectural breakage
when implementing:

- standalone entry
- deeplink entry
- shared session reuse
- offline draft
- sync replay
- sharing
- ERP publication
- premium gating
- inventory reference

# ============================================================
# 2. DEVELOPMENT PRINCIPLE
# ============================================================

Development must proceed
from stable core capability
to dependent capability.

The recommended order is:

1. entry and session base
2. estimate core workflow
3. offline and sync safety
4. sharing and publication reuse
5. inventory reference
6. premium gate
7. premium business features
8. release hardening

# ============================================================
# 3. DEVELOPMENT SUCCESS CONDITION
# ============================================================

Development is considered structurally successful
only when the application preserves:

- rough_estimate default behavior
- ERP authority boundary
- offline fail-closed behavior
- explicit premium entitlement handling
- dual-entry consistency
- shared common-component reuse

