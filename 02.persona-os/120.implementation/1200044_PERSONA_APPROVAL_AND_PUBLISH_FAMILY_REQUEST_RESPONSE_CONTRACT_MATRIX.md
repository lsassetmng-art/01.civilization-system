# PERSONA APPROVAL AND PUBLISH FAMILY REQUEST RESPONSE CONTRACT MATRIX

status: design-freeze-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_122151

purpose:
Fixes request and response contracts for approval and publish family members.

approval_create_request:
  required_fields:
    - approval_subject_reference
    - approval_type
    - requested_by

approval_create_response:
  required_fields:
    - approval_id
    - approval_status
    - created_at

approval_action_request:
  required_fields:
    - approval_id
    - action_type
    - acted_by
  optional_fields:
    - action_reason

approval_action_response:
  required_fields:
    - approval_id
    - decision_status
    - acted_at

approval_sla_response:
  required_fields:
    - approval_id or approval_scope_reference
    - sla_status
    - evaluated_at

asset_publish_request_create_request:
  required_fields:
    - asset_or_release_candidate_reference
    - requested_by
    - publish_scope

asset_publish_request_create_response:
  required_fields:
    - publish_request_id
    - publish_request_status
    - created_at

asset_publish_request_decide_request:
  required_fields:
    - publish_request_id
    - decision_type
    - decided_by

asset_publish_request_decide_response:
  required_fields:
    - publish_request_id
    - decision_status
    - decided_at

publish_apply_request:
  required_fields:
    - publish_request_id or approved_release_reference
    - applied_by

publish_apply_response:
  required_fields:
    - publish_apply_status
    - release_reference or released_asset_reference
    - applied_at

asset_publish_list_response:
  required_fields:
    - listing_status
    - released_asset_list or listing_reference
    - listed_at

contract_rule:
Decision surfaces, apply surfaces, and listing surfaces must remain distinct.

