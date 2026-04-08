# ============================================================
# CIVIL SERVICE ELIGIBILITY
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for civil service eligibility.

# 2. RUNTIME STATE

- active civil-service rule state
- requirement resolution state
- candidate-evaluation state
- result publication state

# 3. EXECUTION RULES

- service-role scope and candidate scope must resolve before evaluation
- requirement set must fully resolve before result publication
- one explicit result must exist per evaluation
- hidden eligibility override is prohibited

# 4. FAILURE HANDLING

- missing service-role scope -> reject
- invalid requirement set -> reject
- hidden eligibility override -> fail closed

