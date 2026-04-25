# ============================================================
# BACKGROUND SWITCH COMMON RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: persona-os
owner: Boss
prepared_by: Zero

definition:
Defines common runtime behavior for background switching.

runtime sequence:
1. background selection surface opens
2. available backgrounds are shown
3. user explicitly selects a background
4. preference is persisted
5. render refresh may occur

rules:
- switching is explicit
- switching affects presentation only
- switching must not change approval or authority meaning
