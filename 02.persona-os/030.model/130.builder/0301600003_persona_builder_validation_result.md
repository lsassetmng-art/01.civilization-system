# ============================================================
# persona_builder_validation_result
# ============================================================

status: canonical
layer: model
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Represent the result of a Builder validation run.


# PRIMARY KEY

- persona_builder_validation_result_id


# FIELDS

- persona_builder_validation_result_id
- persona_builder_draft_id
- validation_scope
- validation_stage
- overall_status
- issue_count
- blocking_issue_count
- warning_count
- validator_version
- evidence_reference
- generated_at
- created_at


# STATUS ENUM

- passed
- passed_with_warnings
- failed
