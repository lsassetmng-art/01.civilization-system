# ============================================================
# JOB
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for job structures.

# 2. OPERATIONAL CONTROLS

- job-definition review
- posting review
- requirement inspection
- job audit inspection

# 3. FAILURE OPERATIONS

- missing employer or posting scope -> reject
- invalid requirement binding -> block
- hidden job mutation -> fail closed

