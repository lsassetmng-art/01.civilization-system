# ============================================================
# PROJECT FLOW FEATURE SLICE EXECUTION CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- feature-slice execution ledger exists
- sequence reasoning exists
- local slices are prioritized before most boundary-aware slices
- boundary-aware slice prerequisites remain explicit
- blocked slices are not silently advanced
