# ============================================================
# AIWORKER RESTRICTED AND PRIVILEGED ACCESS MATRIX EXACT
# ============================================================

status: exact-infrastructure
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact access matrix for restricted and privileged truth families.

restricted_family_scope:
- aiworker.worker_restricted_handling_policy
- restricted-relevant rows in aiworker.worker_state_change_log
- restricted-relevant rows in repair/rebuild history when policy-linked

privileged_family_scope:
- aiworker.worker_privileged_profile
- privileged-relevant rows in aiworker.worker_state_change_log
- privileged-relevant exception-control or escalation-linked rows when policy-linked

role_access_matrix:
- ROLE_AIW_RESTRICTED_REVIEWER
  allowed:
  - SELECT restricted family scope
  - SELECT restricted-relevant audit subset via RLS
  forbidden:
  - SELECT privileged profile by default
  - canonical mutation
  - event delivery mutation

- ROLE_AIW_PRIVILEGED_REVIEWER
  allowed:
  - SELECT privileged family scope
  - SELECT privileged-relevant audit subset via RLS
  forbidden:
  - SELECT restricted policy raw text broadly unless explicitly allowed by narrower policy
  - canonical mutation
  - event delivery mutation

- ROLE_AIW_AUDIT_READER
  allowed:
  - SELECT standard audit/history surfaces
  conditional:
  - restricted/privileged subsets only when explicitly combined with narrower role
  forbidden:
  - broad restricted or privileged truth access by default

- ROLE_AIW_OPERATIONS_REVIEWER
  forbidden:
  - direct restricted family read
  - direct privileged family read

review_escalation_principle:
- standard reviewer -> restricted reviewer escalation is explicit
- standard reviewer -> privileged reviewer escalation is explicit
- restricted reviewer and privileged reviewer are separate reviewer families
- combined holding, if ever allowed, must be explicit and auditable

hard_rules:
- restricted and privileged truth families do not inherit to general review
- no AI worker runtime role receives restricted or privileged raw-table read grants
