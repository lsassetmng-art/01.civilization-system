# ============================================================
# JOB
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for job structures.

# 2. INTEGRATION SCOPE

- job definitions and postings to hiring/interview consumers
- job requirements to evaluation and eligibility consumers
- job audit to operations

# 3. INTEGRATION RULES

- employer scope, posting scope, and requirement set must be explicit before handoff
- posting handoff must preserve job identity and status
- hidden job mutation must not cross boundary
- ambiguous posting or job state must fail closed

