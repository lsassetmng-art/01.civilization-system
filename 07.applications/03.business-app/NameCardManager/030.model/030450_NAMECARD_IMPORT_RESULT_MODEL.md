# ============================================================
# NAMECARD IMPORT RESULT MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines structured result after migration import.

result_fields:
- migration_job_id
- success_count
- warning_count
- skipped_count
- duplicate_candidate_count
- company_group_candidate_count
- image_import_count
- image_missing_count
- followup_review_count

