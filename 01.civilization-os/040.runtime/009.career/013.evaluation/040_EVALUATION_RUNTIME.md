# ============================================================
# EVALUATION
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for career evaluation structures.

# 2. RUNTIME STATE

- active evaluation-definition state
- evaluation-session state
- metric resolution state
- result publication state

# 3. EXECUTION RULES

- evaluation scope and subject identity must resolve before evaluation execution
- metric set must resolve before result publication
- one explicit result state must exist per evaluation session
- hidden evaluation-result mutation is prohibited

# 4. FAILURE HANDLING

- missing evaluation or subject scope -> reject
- invalid metric binding -> reject
- hidden evaluation-result mutation -> fail closed

