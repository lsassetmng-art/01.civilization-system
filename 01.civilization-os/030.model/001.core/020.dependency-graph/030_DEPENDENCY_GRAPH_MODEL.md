# ============================================================
# DEPENDENCY GRAPH
# MODEL
# ============================================================

status: draft
layer: model
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for allowed dependency structure.

# 2. CORE ENTITIES

- dependency_graph
- dependency_node
- dependency_rule
- dependency_violation

# 3. STATE MODEL

dependency_graph:
- graph_id
- graph_version
- effective_from
- graph_status

dependency_node:
- node_code
- layer_code
- node_scope
- read_only_capable_flag

dependency_rule:
- rule_id
- source_node
- target_node
- dependency_mode
- allowed_flag

dependency_violation:
- violation_id
- source_node
- target_node
- violation_type
- detected_at

# 4. INTEGRITY RULES

- every active node must belong to one graph
- dependency rule must be explicit
- prohibited edge must not be executable
- violation must preserve source and target identity

