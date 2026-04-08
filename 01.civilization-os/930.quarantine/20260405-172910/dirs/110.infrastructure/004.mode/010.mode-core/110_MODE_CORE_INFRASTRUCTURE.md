# ============================================================
# MODE CORE
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for mode core structures.

# 2. INFRASTRUCTURE SCOPE

- mode-definition storage
- scope/version persistence
- mode-status storage
- mode-core audit sink

# 3. INFRASTRUCTURE RULES

- mode identity and scope must be durably resolvable
- bindings and versions must persist before downstream handoff
- active and suspended state must remain durable
- infrastructure ambiguity must fail closed

