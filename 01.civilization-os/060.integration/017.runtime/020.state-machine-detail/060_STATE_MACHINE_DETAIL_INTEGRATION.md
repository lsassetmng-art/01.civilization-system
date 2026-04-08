# ============================================================
# STATE MACHINE DETAIL
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for detailed runtime state machines.

# 2. INTEGRATION SCOPE

- state-machine definitions to transition consumers
- transition rules and guards to runtime validators
- transition outcomes to audit and downstream runtime consumers

# 3. INTEGRATION RULES

- state and transition identity must be explicit before handoff
- guards must be fully resolved before transition publication
- hidden transition path must not cross boundary
- invalid transition outcome must preserve rejection evidence

