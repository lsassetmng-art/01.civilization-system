# ============================================================
# INTERVIEW
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for interview structures.

# 2. RUNTIME STATE

- active interview-session state
- stage progression state
- participant resolution state
- result publication state

# 3. EXECUTION RULES

- session scope and participant identity must resolve before interview progression
- stage progression must be explicit before result publication
- one explicit result state must exist per finalized session
- hidden interview-result mutation is prohibited

# 4. FAILURE HANDLING

- missing session scope -> reject
- invalid stage or participant binding -> reject
- hidden interview-result mutation -> fail closed

