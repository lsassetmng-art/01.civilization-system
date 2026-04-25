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

# EXACT READY RUNTIME REINFORCEMENT

status_extension: author-reviewed-with-runtime-reinforcement
reinforced_at: 20260417_152041
domain: runtime

minimum_runtime_requirements:
- define runtime entry condition
- define runtime execution boundary
- define runtime state update points
- define terminal conditions
- define retry or recovery handling where applicable

mandatory_runtime_controls:
- no hidden state mutation
- no silent failure path
- no unaudited terminal action
- explicit timeout or expiry handling where applicable

minimum_runtime_acceptance_targets:
- normal execution path
- blocked or reject path
- timeout or terminal path
- audit evidence path
