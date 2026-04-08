# ============================================================
# JOB
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for job structures.

# 2. RUNTIME STATE

- active job-definition state
- posting-scope resolution state
- requirement-set resolution state
- active/suspended publication state

# 3. EXECUTION RULES

- employer and posting scope must resolve before job publication
- requirement set must resolve before posting activation
- active and suspended states must be explicit
- hidden job mutation is prohibited

# 4. FAILURE HANDLING

- missing employer or posting scope -> reject
- invalid requirement binding -> reject
- hidden job mutation -> fail closed

