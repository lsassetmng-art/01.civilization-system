# ============================================================
# STATE MACHINE DETAIL
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for detailed runtime state machines.

# 2. INFRASTRUCTURE SCOPE

- machine/state storage
- transition-rule persistence
- guard persistence
- transition audit sink

# 3. INFRASTRUCTURE RULES

- current state and transition rules must be durably resolvable
- guard state must persist before transition publication
- transition history must preserve machine identity
- infrastructure ambiguity must fail closed

