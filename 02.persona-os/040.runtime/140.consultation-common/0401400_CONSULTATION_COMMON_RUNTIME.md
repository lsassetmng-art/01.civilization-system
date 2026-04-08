# ============================================================
# CONSULTATION COMMON RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: persona-os
owner: Boss
prepared_by: Zero

definition:
Defines common consultation runtime behavior.

runtime sequence:
1. consultation starts
2. consultation tier is resolved
3. allowed scopes are determined
4. context is loaded
5. guidance output is generated
6. summary is updated
7. downstream explicit action remains separate

rules:
- consultation runtime remains advisory
- runtime must not silently trigger approval or submission
