# ============================================================
# DEPENDENCY GRAPH
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for dependency graph enforcement.

# 2. INTEGRATION SCOPE

- dependency registry to runtime validation
- rule set to startup activation gate
- dependency violation to operations and audit

# 3. INTEGRATION RULES

- validation must consume one active graph version
- startup gate must receive explicit pass/fail result
- read-only exception must be marked in handoff data
- violation propagation must preserve source and target identity

