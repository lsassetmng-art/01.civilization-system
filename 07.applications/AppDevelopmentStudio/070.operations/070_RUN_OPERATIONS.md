# ============================================================
# RUN OPERATIONS
# ============================================================

status: canonical-draft
layer: operations
application: App Development Studio

run_operations_scope:
- run start
- run monitoring
- run status transition
- run completion
- run failure marking

recommended_practice:
Each meaningful run should have visible status and basic audit trace.
