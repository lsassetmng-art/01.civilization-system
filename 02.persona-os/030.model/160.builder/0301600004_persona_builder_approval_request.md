# ============================================================
# persona_builder_approval_request
# ============================================================

status: canonical
layer: model
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Represent a governed approval request
for Builder draft progression.


# PRIMARY KEY

- persona_builder_approval_request_id


# FIELDS

- persona_builder_approval_request_id
- persona_builder_draft_id
- target_persona_ref
- request_scope
- request_reason
- requester_identity
- validation_result_ref
- approval_status
- review_deadline
- evidence_bundle_ref
- requested_at
- decided_at
- created_at
- updated_at


# STATUS ENUM

- approval_not_requested
- approval_requested
- under_review
- approved
- rejected
- returned_for_rework
- approval_expired
- archived
