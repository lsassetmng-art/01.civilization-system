# ============================================================
# RETAIL OPERATION LOOP MODEL
# ============================================================

status: canonical
layer: model
scope: retail-detailed-configuration-and-auto-operation
component: retail-operation-loop

owner: Boss
prepared_by: Zero


# ============================================================
# 1. LOOP
# ============================================================

retail_operation_loop:
- configure_store
- start_auto_operation
- observe_results
- detect_alert_or_opportunity
- intervene
- resume_auto_operation


# ============================================================
# 2. FINAL RULE
# ============================================================

Retail loop
must be configuration-driven
and intervention-based.
