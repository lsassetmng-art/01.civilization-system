# ============================================================
# AIWORKER IMPLEMENTATION WAVE PLAN EXACT
# ============================================================

status: implementation-wave-plan
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Freeze the initial wave plan for implementation execution.

wave_plan:
- Wave 1:
  - aiworker schema/tables/code tables
  - migration verification
  success_condition:
  - raw canonical foundation exists

- Wave 2:
  - official intake path
  - controlled function contract realization
  - audit/outbox linkage
  success_condition:
  - canonical mutation path is executable

- Wave 3:
  - payload validation
  - request/result mapping
  - replay decision helpers
  success_condition:
  - request processing is safe and replay-aware

- Wave 4:
  - grants and RLS
  - restricted/privileged boundaries
  - delivery-role narrowing
  success_condition:
  - raw-table protection is executable

- Wave 5:
  - acceptance tests
  - recovery runbook verification
  - external track coordination checks
  success_condition:
  - implementation evidence exists

hard_rules:
- do not start from convenience tools
- do not skip Wave 1 and Wave 2 dependencies
- external dependency validation is later than canonical core realization
