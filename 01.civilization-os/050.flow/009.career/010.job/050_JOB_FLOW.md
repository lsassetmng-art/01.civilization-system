# ============================================================
# JOB
# FLOW
# ============================================================

status: draft
layer: flow
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for job handling.

# 2. TRIGGER

- job creation/update request
- job posting request
- job requirement update

# 3. MAIN FLOW

1. create or resolve job_definition
2. bind job_requirement set
3. create or update job_posting
4. validate employer and posting scope
5. persist job_status
6. emit audit trace

# 4. FAILURE FLOW

- missing employer or posting scope -> reject
- invalid requirement binding -> reject
- hidden job mutation -> fail closed

# 5. OUTPUT

- job state
- posting/requirement state
- audit record

