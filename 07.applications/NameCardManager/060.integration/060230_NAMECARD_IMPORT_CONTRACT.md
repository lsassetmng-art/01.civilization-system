# ============================================================
# NAMECARD IMPORT CONTRACT
# ============================================================

status: canonical
layer: integration
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines import boundary for migration intake.

request_direction:
- source_type
- source_file_name
- source_file_payload
- mapping_profile_optional
- import_mode

response_direction:
- migration_job_id
- diagnostic_result
- import_preview
- import_result_optional

