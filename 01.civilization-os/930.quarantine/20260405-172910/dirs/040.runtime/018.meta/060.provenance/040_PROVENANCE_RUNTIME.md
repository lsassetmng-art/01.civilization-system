# ============================================================
# PROVENANCE
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for provenance structures.

# 2. RUNTIME STATE

- active provenance-record state
- actor-reference resolution state
- provenance-rule resolution state
- active/blocked provenance state

# 3. EXECUTION RULES

- provenance scope, actor references, and rules must resolve before publication
- blocked provenance state must prevent unauthorized provenance execution
- active and blocked states must be explicit
- hidden provenance mutation is prohibited

# 4. FAILURE HANDLING

- missing provenance scope -> reject
- invalid actor or rule binding -> reject
- hidden provenance mutation -> fail closed

