# ============================================================
# SECRETARY SWITCH COMMON RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: persona-os
owner: Boss
prepared_by: Zero

definition:
Defines common runtime behavior for secretary switching.

runtime sequence:
1. current secretary area is activated
2. secretary selection surface opens
3. eligible secretaries are shown
4. user selects one secretary
5. preference is persisted
6. presentation and guidance style refresh

rules:
- switching is explicit
- switching affects presentation and wording only

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
