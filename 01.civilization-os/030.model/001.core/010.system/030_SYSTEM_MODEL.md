# ============================================================
# SYSTEM
# MODEL
# ============================================================

status: draft
layer: model
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical system-level model for CivilizationOS core structure.

# 2. CORE ENTITIES

- system_node
- dependency_edge
- control_boundary
- failure_state

# 3. STATE MODEL

system_node:
- node_code
- node_type
- layer_code
- enabled_flag
- authority_scope

dependency_edge:
- edge_id
- source_node
- target_node
- dependency_type
- write_permission_flag

control_boundary:
- boundary_id
- source_scope
- target_scope
- boundary_rule_code

failure_state:
- failure_id
- source_node
- failure_type
- severity_code
- detected_at

# 4. INTEGRITY RULES

- reverse dependency edge is prohibited
- write_permission_flag must be explicit
- control boundary must be declared before execution
- system failure must be attributable to a source node

