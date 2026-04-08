# ============================================================
# EXECUTION CONTROL
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for execution control.

# 2. INFRASTRUCTURE SCOPE

- controller storage
- window/mode persistence
- blocked/active state persistence
- execution audit sink

# 3. INFRASTRUCTURE RULES

- controller scope and state must be durably resolvable
- window/mode changes must persist before execution handoff
- blocked state must remain durable and attributable
- infrastructure ambiguity must fail closed

