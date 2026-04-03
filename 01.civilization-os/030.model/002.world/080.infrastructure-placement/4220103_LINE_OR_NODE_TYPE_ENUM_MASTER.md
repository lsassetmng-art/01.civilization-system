# ============================================================
# LINE OR NODE TYPE ENUM MASTER
# ============================================================

status: canonical
layer: model
scope: placeable-infrastructure-enum-master
component: line-or-node-type-enum-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENUM VALUES
# ============================================================

line_or_node_type_enum:
- line
- node


# ============================================================
# 2. FINAL RULE
# ============================================================

Every placeable infrastructure object
must be classified as line or node.
