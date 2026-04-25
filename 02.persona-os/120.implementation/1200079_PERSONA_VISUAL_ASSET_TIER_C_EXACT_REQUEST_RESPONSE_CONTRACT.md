# PERSONA VISUAL ASSET TIER C EXACT REQUEST RESPONSE CONTRACT

status: tier-c-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_182828

purpose:
Fixes the exact request and response contract for visual and asset family members.

visual_job_create_request_required_fields:
- persona_or_subject_reference
- job_type
- requested_by
- visual_input_payload

visual_job_create_request_optional_fields:
- template_reference
- style_hint
- request_trace_id

visual_job_create_response_required_fields:
- visual_job_id
- job_status
- created_at

visual_compose_request_required_fields:
- visual_job_id or compose_input_reference
- compose_context

visual_compose_request_optional_fields:
- output_profile
- compose_trace_id

visual_compose_response_required_fields:
- compose_status
- compose_output_reference_or_manifest_reference
- composed_at

visual_upload_request_required_fields:
- upload_subject_reference
- upload_context
- uploaded_by

visual_upload_request_optional_fields:
- manifest_reference
- checksum
- upload_trace_id

visual_upload_response_required_fields:
- upload_status
- upload_reference_or_asset_reference
- uploaded_at

persona_auto_generate_part_request_required_fields:
- generation_subject_reference
- part_type
- generation_context

persona_auto_generate_part_request_optional_fields:
- style_hint
- generation_trace_id

persona_auto_generate_part_response_required_fields:
- generation_status
- generation_job_or_candidate_asset_reference
- created_at

persona_build_manifest_request_required_fields:
- persona_or_asset_reference
- build_context

persona_build_manifest_request_optional_fields:
- build_trace_id
- output_scope

persona_build_manifest_response_required_fields:
- manifest_status
- manifest_reference
- built_at

persona_background_get_signed_urls_request_required_fields:
- background_asset_reference
- requester_context

persona_background_get_signed_urls_request_optional_fields:
- delivery_scope
- expiry_hint

persona_background_get_signed_urls_response_required_fields:
- url_status
- signed_url_reference_or_signed_url_list
- expires_at

contract_rules:
- work-state responses must not imply released status
- signed URL response must not imply publish approval
- generated candidate response must not imply released artifact
- manifest output must not imply released artifact unless release lineage exists

