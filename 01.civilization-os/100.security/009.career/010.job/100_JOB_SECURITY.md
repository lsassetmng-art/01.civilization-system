# ============================================================
# JOB
# SECURITY
# ============================================================

status: draft
layer: security
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for job structures.

# 2. SECURITY SCOPE

- job-definition integrity
- posting/requirement authorization
- job-status integrity
- job audit protection

# 3. SECURITY RULES

- employer scope, posting scope, and job identity must be tamper-evident
- posting and requirement changes require explicit authorization
- hidden job mutation must be detectable
- audit output must preserve job identity

