# ============================================================
# AIWORKER ROLE FAMILY AND GRANT MATRIX EXACT
# ============================================================

status: exact-security
system: AiworkerOS
layer: 100.security
owner: Boss
prepared_by: Zero

purpose:
Freeze the database-side role family design for AiworkerOS.

role_family_principles:
- default deny
- least privilege
- raw truth separation
- write surface separation
- function-only canonical mutation
- no privilege widening by rank, role, or style
- review roles are not execution roles

role_families:
- ROLE_AIW_SCHEMA_OWNER
  purpose:
  Owns schema objects and grants.
  not_for_runtime_use: true

- ROLE_AIW_MIGRATOR
  purpose:
  Applies additive migrations only.
  runtime_use: false

- ROLE_AIW_OFFICIAL_INTAKE_WRITER
  purpose:
  Inserts official intake request rows and may set initial RECEIVED status only.

- ROLE_AIW_CONTROLLED_FUNCTION_EXECUTOR
  purpose:
  Executes controlled functions only.
  direct_raw_table_dml: prohibited_except_through_function_definer_path

- ROLE_AIW_AUDIT_READER
  purpose:
  Reads audit and history surfaces needed for review.
  mutation_allowed: false

- ROLE_AIW_OPERATIONS_REVIEWER
  purpose:
  Reads limited raw review surfaces needed for operations governance.
  mutation_allowed: false

- ROLE_AIW_EVENT_DELIVERY
  purpose:
  Reads undelivered event_outbox rows and marks delivery metadata only.

- ROLE_AIW_RESTRICTED_REVIEWER
  purpose:
  Narrow reviewer for restricted-handling truth families.

- ROLE_AIW_PRIVILEGED_REVIEWER
  purpose:
  Narrow reviewer for privileged-context truth families.

- ROLE_AIW_NO_RAWTABLE_AIWORKER
  purpose:
  Negative policy identity representing AI-worker actors.
  raw_table_access: none

grant_matrix_principles:
- ROLE_AIW_NO_RAWTABLE_AIWORKER receives no raw-table SELECT
- ROLE_AIW_OFFICIAL_INTAKE_WRITER does not execute controlled mutation directly
- ROLE_AIW_CONTROLLED_FUNCTION_EXECUTOR does not receive broad table grants for ad hoc querying
- ROLE_AIW_EVENT_DELIVERY does not read worker master internals beyond outbox-linked minimum
- restricted and privileged reviewers do not automatically inherit each other

hard_rules:
- style does not map to DB grants
- rank does not map to DB grants
- app lane does not map directly to DB grants
- grant realization must preserve canonical surface separation already frozen in prior bundles
