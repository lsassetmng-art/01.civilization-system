# PERSONA APPROVAL PUBLISH TIER B EXACT REQUEST RESPONSE CONTRACT

status: tier-b-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_182500

purpose:
Fixes the exact request and response contract for approval and publish family members.

approval_create_request_required_fields:
- approval_subject_reference
- approval_type
- requested_by

approval_create_request_optional_fields:
- approval_context
- request_trace_id
- requested_deadline

approval_create_response_required_fields:
- approval_id
- approval_status
- created_at

approval_action_request_required_fields:
- approval_id
- action_type
- acted_by

approval_action_request_optional_fields:
- action_reason
- action_trace_id
- action_context

approval_action_response_required_fields:
- approval_id
- decision_status
- acted_at

approval_sla_request_optional_fields:
- approval_scope_reference
- approval_id
- evaluation_window

approval_sla_response_required_fields:
- sla_status
- approval_reference_or_scope
- evaluated_at

asset_publish_request_create_request_required_fields:
- asset_or_release_candidate_reference
- publish_scope
- requested_by

asset_publish_request_create_request_optional_fields:
- publish_context
- request_trace_id

asset_publish_request_create_response_required_fields:
- publish_request_id
- publish_request_status
- created_at

asset_publish_request_decide_request_required_fields:
- publish_request_id
- decision_type
- decided_by

asset_publish_request_decide_request_optional_fields:
- decision_reason
- decision_context

asset_publish_request_decide_response_required_fields:
- publish_request_id
- decision_status
- decided_at

publish_apply_request_required_fields:
- publish_request_id or approved_release_reference
- applied_by

publish_apply_request_optional_fields:
- apply_context
- apply_trace_id

publish_apply_response_required_fields:
- publish_apply_status
- release_reference_or_released_asset_reference
- applied_at

asset_publish_list_request_optional_fields:
- list_scope
- filter_context
- pagination_reference

asset_publish_list_response_required_fields:
- listing_status
- released_asset_list_or_listing_reference
- listed_at

contract_rules:
- request creation, decision, apply, and listing must remain separate surfaces
- listing response must not imply decision authority
- apply response must not expose mutable approval internals beyond allowed release result fields

