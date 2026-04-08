# ============================================================
# STATE MACHINE
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for state transition execution.

# 2. INFRASTRUCTURE SCOPE

- machine state persistence
- transition record storage
- trigger input boundary
- rejection audit sink

# 3. INFRASTRUCTURE RULES

- current state must be durably readable before transition
- transition record must be durably persisted with from/to state
- rejected transition evidence must be stored before returning control
- infrastructure inconsistency must fail closed

