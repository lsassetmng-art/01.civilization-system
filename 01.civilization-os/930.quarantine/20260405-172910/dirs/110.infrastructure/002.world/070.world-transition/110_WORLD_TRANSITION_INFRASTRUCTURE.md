# ============================================================
# WORLD TRANSITION
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for world transitions.

# 2. INFRASTRUCTURE SCOPE

- transition storage
- trigger/guard persistence
- transition-status storage
- world-transition audit sink

# 3. INFRASTRUCTURE RULES

- transition identity and from/to state must be durably resolvable
- triggers and guards must persist before execution handoff
- active and blocked state must remain durable
- infrastructure ambiguity must fail closed

