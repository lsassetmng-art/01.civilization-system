# ============================================================
# DEPENDENCY GRAPH
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for dependency graph enforcement.

# 2. INFRASTRUCTURE SCOPE

- graph registry storage
- validation execution path
- violation persistence path
- startup gate dependency

# 3. INFRASTRUCTURE RULES

- one active graph version must be resolvable from infrastructure state
- violation persistence must complete before activation continues
- startup gate depends on completed validation path
- registry ambiguity must fail closed

