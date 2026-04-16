# ============================================================
# NAMECARD MIGRATION JOB MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines migration job tracking for source-service import.

main_fields:
- migration_job_id
- source_type
- source_file_name
- source_exported_at
- import_started_at
- import_completed_at
- imported_record_count
- warning_count
- duplicate_candidate_count
- normalization_candidate_count
- completion_state

supported_source_types:
- sansan_csv
- eightteam_csv
- generic_csv

