# ============================================================
# CONNECTION PROFILE MODEL
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

purpose:
Defines structured database connection settings for AI-friendly usage.

definition:
connection_profile represents one database connection option
with purpose, environment, permission, and safety metadata.

minimum_fields:
- connection_profile_id
- profile_name
- db_type
- host_or_data_source
- port
- database_name
- schema_scope
- auth_type
- secret_ref_id
- environment_scope
- usage_purpose
- read_write_scope
- ddl_allowed
- production_allowed
- status
- created_at
- updated_at

db_type_examples:
- postgresql
- mysql
- sqlite
- sqlserver
- oracle
- custom

read_write_scope_examples:
- read_only
- read_write
- ddl_allowed
- restricted_write

environment_scope_examples:
- local
- dev
- test
- staging
- production

relations:
- links to connection_profile_version
- links to connection_usage_policy
- links to connection_selection_record

notes:
This model allows the internal AI to choose safer and more suitable DB targets.
