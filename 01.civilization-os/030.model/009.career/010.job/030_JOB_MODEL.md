# ============================================================
# JOB
# MODEL
# ============================================================

status: draft
layer: model
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for job structures.

# 2. CORE ENTITIES

- job_definition
- job_posting
- job_requirement
- job_status

# 3. STATE MODEL

job_definition:
- job_definition_id
- job_code
- occupation_code
- employer_scope
- job_status

job_posting:
- job_posting_id
- job_definition_id
- posting_scope
- posting_status
- published_at

job_requirement:
- job_requirement_id
- job_definition_id
- requirement_type_code
- requirement_value
- requirement_status

job_status:
- job_status_id
- job_definition_id
- active_flag
- suspended_flag
- changed_at

# 4. INTEGRITY RULES

- posting and requirement must belong to one job definition
- employer and posting scope must be explicit
- active and suspended state must be explicit
- hidden job mutation is prohibited

