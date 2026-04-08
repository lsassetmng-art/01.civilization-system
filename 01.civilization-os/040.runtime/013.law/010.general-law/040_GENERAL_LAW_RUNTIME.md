# ============================================================
# GENERAL LAW
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for general law structures.

# 2. RUNTIME STATE

- active law-code state
- article binding resolution state
- jurisdiction-scope resolution state
- revision/publication state

# 3. EXECUTION RULES

- active law status must be explicit before publication
- article set and jurisdiction scope must resolve before runtime use
- revision state must exist before legal mutation is published
- hidden law mutation is prohibited

# 4. FAILURE HANDLING

- missing jurisdiction scope -> reject
- invalid article binding -> reject
- hidden law mutation without revision state -> fail closed

