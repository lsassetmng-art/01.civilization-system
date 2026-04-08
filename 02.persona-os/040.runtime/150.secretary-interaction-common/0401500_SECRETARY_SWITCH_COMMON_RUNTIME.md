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
