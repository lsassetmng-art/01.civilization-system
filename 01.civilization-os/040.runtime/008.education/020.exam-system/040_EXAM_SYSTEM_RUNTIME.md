# ============================================================
# EXAM SYSTEM
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for exam system structures.

# 2. RUNTIME STATE

- active exam-definition state
- exam-session resolution state
- exam-attempt progression state
- result publication state

# 3. EXECUTION RULES

- exam scope and session identity must resolve before attempt execution
- attempt and scoring conditions must validate before result publication
- one explicit result state must exist per finalized attempt
- hidden result mutation is prohibited

# 4. FAILURE HANDLING

- missing exam scope -> reject
- invalid session or attempt binding -> reject
- hidden result mutation -> fail closed

