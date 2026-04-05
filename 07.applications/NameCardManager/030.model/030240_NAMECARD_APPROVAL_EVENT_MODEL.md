# ============================================================
# NAMECARD APPROVAL EVENT MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_approval_event
owner: Boss
prepared_by: Zero

purpose:
Stores approval-related events connected to ERP-wide publication.

fields:
- approval_event_id
- publication_request_id
- namecard_id
- approval_flow_type
- approval_state
- approver_user_id
- approval_note
- approval_event_type
- occurred_at
- created_at

approval_flow_type_examples:
- shared_businessos_erp_publication

approval_state_examples:
- pending
- approved
- rejected
- returned_for_fix

approval_event_type_examples:
- request_created
- routed_for_approval
- approved
- rejected
- returned_for_fix
