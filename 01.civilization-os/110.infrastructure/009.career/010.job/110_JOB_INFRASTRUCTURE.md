# ============================================================
# JOB
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for job structures.

# 2. INFRASTRUCTURE SCOPE

- job-definition storage
- posting/requirement persistence
- job-status storage
- job audit sink

# 3. INFRASTRUCTURE RULES

- employer scope and posting identity must be durably resolvable
- requirement set must persist before posting publication
- active and suspended state must remain durable
- infrastructure ambiguity must fail closed

