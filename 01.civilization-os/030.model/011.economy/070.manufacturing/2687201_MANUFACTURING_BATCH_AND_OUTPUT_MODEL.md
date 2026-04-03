# ============================================================
# MANUFACTURING BATCH AND OUTPUT MODEL
# ============================================================

status: canonical
layer: model
scope: industry-pack
component: manufacturing-batch-and-output

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SUPPORTED OBJECTS
# ============================================================

- production_plan
- build_order
- batch_record
- output_record
- quality_result


# ============================================================
# 2. FINAL RULE
# ============================================================

Manufacturing output must be batch-linked and quality-linked.
