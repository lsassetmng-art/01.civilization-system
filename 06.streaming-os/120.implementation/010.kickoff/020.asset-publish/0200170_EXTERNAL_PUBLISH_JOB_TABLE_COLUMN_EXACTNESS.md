# ============================================================
# K2 EXTERNAL PUBLISH JOB TABLE-COLUMN EXACTNESS
# ============================================================

status: exact-table-column
domain: external-publish
table: external_publish_jobs
prepared_by: Zero
owner: Boss

required_columns:
- external_publish_job_id
- publish_source_type
- publish_source_id
- publish_target_type
- publish_target_account_ref
- job_state
- dispatch_state
- created_at
- updated_at

optional_columns:
- result_state
- title_override
- description_override
- visibility_override
- scheduled_publish_at
- external_reference_id
- last_dispatch_at
- last_result_at

recommended_constraints:
- pk(external_publish_job_id)
- check(publish_source_type in allowed set)
- check(publish_target_type in allowed set)
- check(job_state in allowed set)
- check(dispatch_state in allowed set)
- check(result_state in allowed set or null)

recommended_indexes:
- idx_external_publish_jobs_publish_source
- idx_external_publish_jobs_publish_target_type
- idx_external_publish_jobs_job_state
- idx_external_publish_jobs_dispatch_state
- idx_external_publish_jobs_scheduled_publish_at
- idx_external_publish_jobs_updated_at

semantic_notes:
- publish_source_id intentionally stays polymorphic at K2 exactness level
- job_state is broader lifecycle than dispatch_state
- result_state remains nullable until result exists
- external_reference_id is nullable because not every target returns reference at the same stage

open_for_sql_precision_only:
- exact polymorphic source strategy
- exact target-account reference type
- exact default clauses
- exact partial index conditions
- exact idempotency materialization structure
