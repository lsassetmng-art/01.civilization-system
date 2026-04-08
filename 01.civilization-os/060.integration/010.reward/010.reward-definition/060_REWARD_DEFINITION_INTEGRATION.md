# ============================================================
# REWARD DEFINITION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 010.reward
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for reward definitions.

# 2. INTEGRATION SCOPE

- reward definition to grant/distribution systems
- reward source/condition/value sets to runtime validation
- reward definition audit to operations

# 3. INTEGRATION RULES

- definition handoff requires explicit version state
- source, condition, and value sets must remain aligned by definition
- incompatible value/version state must not cross boundary
- rejected definition updates must preserve audit evidence

