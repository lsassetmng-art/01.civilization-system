# ============================================================
# MODE SESSION BINDING
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for mode session bindings.

# 2. INFRASTRUCTURE SCOPE

- session-binding storage
- reference/constraint persistence
- binding-status storage
- mode-session-binding audit sink

# 3. INFRASTRUCTURE RULES

- mode scope and session scope must be durably resolvable
- references and constraints must persist before runtime handoff
- active and blocked state must remain durable
- infrastructure ambiguity must fail closed

