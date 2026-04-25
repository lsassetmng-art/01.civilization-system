# ============================================================
# K4 MODERATION TABLE-COLUMN EXACTNESS
# ============================================================

status: exact-table-column
domain: moderation
prepared_by: Zero
owner: Boss

tables:
- comment_records
- comment_moderation_states
- report_records
- appeal_records
- moderation_restoration_records

comment_records_required_columns:
- comment_id
- target_type
- target_id
- author_principal_id
- comment_body
- created_at
- updated_at

comment_moderation_states_required_columns:
- comment_moderation_state_id
- comment_id
- moderation_state
- updated_at

report_records_required_columns:
- report_record_id
- target_type
- target_id
- reporter_principal_id
- report_reason_code
- created_at
- updated_at

appeal_records_required_columns:
- appeal_record_id
- target_type
- target_id
- requester_principal_id
- appeal_reason_code
- created_at
- updated_at

moderation_restoration_records_required_columns:
- moderation_restoration_record_id
- target_type
- target_id
- decision_state
- updated_at

recommended_constraints:
- fk(comment_id -> comment_records.comment_id) for comment_moderation_states
- check(moderation_state in allowed set)
- check(report_reason_code in allowed set)
- check(appeal_reason_code in allowed set)
- check(decision_state in allowed set)

recommended_indexes:
- target_type + target_id indexes across moderation tables
- author_principal_id index for comment_records
- reporter_principal_id index for report_records
- requester_principal_id index for appeal_records
- updated_at indexes across moderation tables

semantic_notes:
- comment record identity remains distinct from moderation state identity
- report record is intake object, not decision object
- appeal record is requester-side challenge object
- moderation restoration record is outcome/control object

open_for_sql_precision_only:
- exact SQL type names
- exact evidence-ref storage strategy
- exact fk actions
- exact default clauses
