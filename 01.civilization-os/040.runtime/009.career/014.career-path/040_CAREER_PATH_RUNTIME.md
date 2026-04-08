# ============================================================
# CAREER PATH
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for career path structures.

# 2. RUNTIME STATE

- active career-path definition
- step-order resolution state
- requirement resolution state
- active/revised publication state

# 3. EXECUTION RULES

- path scope and deterministic step order must resolve before publication
- requirement set must resolve before active-state publication
- active and revised states must be explicit
- hidden path mutation is prohibited

# 4. FAILURE HANDLING

- missing path scope -> reject
- invalid step or requirement binding -> reject
- hidden path mutation -> fail closed

