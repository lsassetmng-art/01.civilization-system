# ============================================================
# AI CONNECTION SELECTION RUNTIME
# ============================================================

status: canonical-draft
layer: runtime
application: App Development Studio

purpose:
Defines AI-friendly selection of appropriate DB targets.

selection_inputs:
- usage purpose
- SQL safety class
- environment
- schema scope
- write permission needs
- production policy

selection_outputs:
- selected connection profile
- rejected connection candidates
- safety notes
