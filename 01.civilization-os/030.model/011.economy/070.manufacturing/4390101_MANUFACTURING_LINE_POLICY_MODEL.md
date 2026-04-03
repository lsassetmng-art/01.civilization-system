# ============================================================
# MANUFACTURING LINE POLICY MODEL
# ============================================================

status: canonical
layer: model
scope: manufacturing-detailed-configuration-and-auto-operation
component: manufacturing-line-policy

owner: Boss
prepared_by: Zero


line_policies:
- balanced_output
- throughput_priority
- quality_priority
- strategic_goods_priority
- civilian_goods_priority
- custom_order_priority
- maintenance_buffer_priority


# FINAL RULE

Line policy
must shape output mix, delay, and defect behavior.
