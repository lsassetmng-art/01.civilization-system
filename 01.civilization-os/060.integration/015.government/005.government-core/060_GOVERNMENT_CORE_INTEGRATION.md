# ============================================================
# GOVERNMENT CORE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for government core structures.

# 2. INTEGRATION SCOPE

- government core to authority and society systems
- authority-term state to election/governance consumers
- legitimacy/stability state to runtime and operations
- government audit to operations

# 3. INTEGRATION RULES

- government scope and authority identity must be explicit before handoff
- active term handoff must preserve authority identity and term window
- ambiguous governing authority must not cross boundary
- audit output must preserve government-unit identity

